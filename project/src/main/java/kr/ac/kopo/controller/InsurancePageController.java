package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.service.InsuranceSignService;
import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.InsuranceSignVO;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class InsurancePageController {

	@Autowired
	private InsuranceSignService insurancesignService;
	@Autowired
	private MemberService memberService;

	@RequestMapping("/insurancePage")
	public String insuranceList(Model model, @ModelAttribute MemberVO member) {
		// check 정보 default N
		model.addAttribute("memberList", memberService.selectCheck(member));

		return "mypage/insurancePage";
	}

	@RequestMapping("/agreePage")
	public String agree(HttpServletRequest req, Model model, @ModelAttribute InsuranceSignVO insurancesignVO,
			HttpSession session) {

		String id = req.getParameter("id");

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		id = memberVO.getId();

		List<Map<String, Object>> insuranceList = insurancesignService.insuranceList(id);
		for (Map<String, Object> data : insuranceList) {
			Set<String> keys = data.keySet();
			for (String key : keys) {

			}
		}

		model.addAttribute("insuranceList", insuranceList);
		System.out.println("insuranceList" + insuranceList);

		List<Map<String, Object>> insuranceFee = insurancesignService.insuranceFee(id);
		for (Map<String, Object> data : insuranceFee) {
			Set<String> keys = data.keySet();
			for (String key : keys) {

			}
		}

		model.addAttribute("insuranceFee", insuranceFee);

		List<Map<String, Object>> insuranceSum = insurancesignService.insuranceSum(id);
		for (Map<String, Object> data : insuranceSum) {
			Set<String> keys = data.keySet();
			for (String key : keys) {

			}
		}

		model.addAttribute("insuranceSum", insuranceSum);

		List<Map<String, Object>> insuranceRank = insurancesignService.insuranceRank();
		for (Map<String, Object> data : insuranceRank) {
			Set<String> keys = data.keySet();
			for (String key : keys) {

			}
		}

		model.addAttribute("insuranceRank", insuranceRank);

		/*
		 * // PDF를 작성하는 html // PDF에 한글을 출력하기 위해 반드시 !! font 설정을 해주어야함 ★★ String htmlStr
		 * = "<html>" + "<head></head>" + "<body style=\"font-family:hanaFont;\">" +
		 * 
		 * "</body>" + "</html>";
		 * 
		 * // 파일 IO 스트림을 취득한다.(생성할 디렉토리 및 파일명) try (FileOutputStream os = new
		 * FileOutputStream("D:/insurance/signpaper.pdf")) {
		 * 
		 * // Pdf형식의 document를 생성한다.(생략 가능) Document document = new
		 * Document(PageSize.A4, 10, 10, 10, 10); //Document document = new Document();
		 * 
		 * // PdfWriter를 취득한다. PdfWriter writer = PdfWriter.getInstance(document, os);
		 * 
		 * // document Open한다. document.open();
		 * 
		 * // css를 설정할 resolver 인스턴스 생성(css는 옵션으로 없어도 상관없음) StyleAttrCSSResolver
		 * cssResolver = new StyleAttrCSSResolver();
		 * 
		 * // Css 파일 설정 (css1.css 파일 설정)
		 * 
		 * try (FileInputStream cssStream = new
		 * FileInputStream("D:/insurance/new/tablecss.css")) {
		 * cssResolver.addCss(XMLWorkerHelper.getCSS(cssStream)); }
		 * 
		 * // 파일에서 이미지 생성 String filename = "test_image.jpg"; Image image =
		 * Image.getInstance(filename); document.add(image);
		 * 
		 * // 폰트 설정 XMLWorkerFontProvider font = new
		 * XMLWorkerFontProvider(XMLWorkerFontProvider.DONTLOOKFORFONTS);
		 * 
		 * // HTML 폰트 설정(경로내에 해당 폰트가 존재해야함) - 한글을 지원하는 폰트 사용. 확장자는 반드시 ttf
		 * font.register("C:/Users/LGJ/Downloads/ttf_windows/HanaM.ttf", "hanaFont"); //
		 * MalgunGothic : Alias
		 * 
		 * // 폰트 인스턴스를 생성한다. CssAppliersImpl cssAppliers = new CssAppliersImpl(font);
		 * 
		 * 
		 * Html to Pdf 변환
		 * 
		 * //htmlContext의 pipeline 생성. (폰트 인스턴스 생성) HtmlPipelineContext htmlContext =
		 * new HtmlPipelineContext(cssAppliers);
		 * htmlContext.setTagFactory(Tags.getHtmlTagProcessorFactory());
		 * 
		 * // pdf의 pipeline 생성. PdfWriterPipeline pdfPipeline = new
		 * PdfWriterPipeline(document, writer);
		 * 
		 * // Html의pipeline을 생성 (html 태그, pdf의 pipeline설정) HtmlPipeline htmlPipeline =
		 * new HtmlPipeline(htmlContext, pdfPipeline);
		 * 
		 * // css의pipeline을 합친다. CssResolverPipeline cssResolverPipeline = new
		 * CssResolverPipeline(cssResolver, htmlPipeline);
		 * 
		 * //Work 생성 pipeline 연결 XMLWorker worker = new XMLWorker(cssResolverPipeline,
		 * true);
		 * 
		 * //Xml 파서 생성(Html를 pdf로 변환) XMLParser xmlParser = new XMLParser(true, worker,
		 * Charset.forName("UTF-8"));
		 * 
		 * // 출력한다. try (StringReader strReader = new StringReader(htmlStr)) {
		 * xmlParser.parse(strReader); }
		 * 
		 * document.add(new Paragraph("하이!"));
		 * 
		 * // document의 리소스 반환 document.close();
		 * 
		 * 
		 * } catch (Exception e) { e.printStackTrace(); }
		 */

		return "mypage/agreePage";
	}

}
