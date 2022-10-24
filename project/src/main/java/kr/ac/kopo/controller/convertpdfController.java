package kr.ac.kopo.controller;

import java.io.FileOutputStream;
import java.io.StringReader;
import java.nio.charset.Charset;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorker;
import com.itextpdf.tool.xml.XMLWorkerFontProvider;
import com.itextpdf.tool.xml.css.StyleAttrCSSResolver;
import com.itextpdf.tool.xml.html.CssAppliersImpl;
import com.itextpdf.tool.xml.html.Tags;
import com.itextpdf.tool.xml.parser.XMLParser;
import com.itextpdf.tool.xml.pipeline.css.CssResolverPipeline;
import com.itextpdf.tool.xml.pipeline.end.PdfWriterPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipeline;
import com.itextpdf.tool.xml.pipeline.html.HtmlPipelineContext;

@Controller
public class convertpdfController {
	
	@RequestMapping("/downpdf")
	public static void main(String[] args) {

		// PDF를 작성하는 html
        // PDF에 한글을 출력하기 위해 반드시 !! font 설정을 해주어야함 ★★
		String htmlStr = "<html>" +
				"<head></head>" +
				"<body style=\"font-family:hanaFont;\">" +
				"<div>zz테스트으gg</div>" +
				"</body>" +
				"</html>";

		// 파일 IO 스트림을 취득한다.(생성할 디렉토리 및 파일명)
		try (FileOutputStream os = new FileOutputStream("D:/insurance/test.pdf")) {
			
			// Pdf형식의 document를 생성한다.(생략 가능)
			Document document = new Document(PageSize.A4, 10, 10, 10, 10);
			//Document document = new Document();
			
			// PdfWriter를 취득한다.
			PdfWriter writer = PdfWriter.getInstance(document, os);
			
			// document Open한다.
			document.open();
			
			// css를 설정할 resolver 인스턴스 생성(css는 옵션으로 없어도 상관없음)
			StyleAttrCSSResolver cssResolver = new StyleAttrCSSResolver();
			
			// Css 파일 설정 (css1.css 파일 설정)
			/*
			 * try (FileInputStream cssStream = new FileInputStream("C:/test/css1.css")) {
			 * cssResolver.addCss(XMLWorkerHelper.getCSS(cssStream)); }
			 */
			
			// 폰트 설정
			XMLWorkerFontProvider font = new XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
			
			// HTML 폰트 설정(경로내에 해당 폰트가 존재해야함) - 한글을 지원하는 폰트 사용. 확장자는 반드시 ttf
			font.register("C:/Users/LGJ/Downloads/ttf_windows/HanaM.ttf", "hanaFont"); // MalgunGothic : Alias 
			
			// 폰트 인스턴스를 생성한다.
			CssAppliersImpl cssAppliers = new CssAppliersImpl(font);
			
			
			/* Html to Pdf 변환 */
			
			//htmlContext의 pipeline 생성. (폰트 인스턴스 생성)
			HtmlPipelineContext htmlContext = new HtmlPipelineContext(cssAppliers);
			htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
			
			// pdf의 pipeline 생성.
			PdfWriterPipeline pdfPipeline = new PdfWriterPipeline(document, writer);
			
			// Html의pipeline을 생성 (html 태그, pdf의 pipeline설정)
			HtmlPipeline htmlPipeline = new HtmlPipeline(htmlContext, pdfPipeline);
			
			// css의pipeline을 합친다.
			CssResolverPipeline cssResolverPipeline = new CssResolverPipeline(cssResolver, htmlPipeline);
			
			//Work 생성 pipeline 연결
			XMLWorker worker = new XMLWorker(cssResolverPipeline, true);
			
			//Xml 파서 생성(Html를 pdf로 변환)
			XMLParser xmlParser = new XMLParser(true, worker, Charset.forName("UTF-8"));
			
			// 출력한다.
			try (StringReader strReader = new StringReader(htmlStr)) {
				xmlParser.parse(strReader);
			}

            document.add(new Paragraph("하이!"));
			
			// document의 리소스 반환
			document.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
