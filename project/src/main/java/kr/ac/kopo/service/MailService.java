package kr.ac.kopo.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.dao.MemberMailDAO;
import kr.ac.kopo.vo.MailServiceVO;

@Service
public class MailService {

	@Autowired
	private JavaMailSender emailSender;
	
	@Autowired
	private MemberMailDAO memberMailDao;
	 
    public void sendMultipleMessage(MailServiceVO mailDto, MultipartFile file) throws MessagingException, IOException {
    	MimeMessage message = emailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        
        helper.setSubject(mailDto.getTitle());
        
        //참조자 설정      
                
        helper.setFrom("hanacare.help@gmail.com");
        helper.setTo(mailDto.getAddress()); message.setSubject(mailDto.getTitle());
        helper.setText(mailDto.getContent());
        
        //첨부 파일 설정
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        
        helper.addAttachment(MimeUtility.encodeText(fileName, "UTF-8", "B"), new ByteArrayResource(IOUtils.toByteArray(file.getInputStream())));
        

        //전송
        emailSender.send(message);

        /*
		 * SimpleMailMessage message = new SimpleMailMessage();
		 * message.setFrom("hanacare.help@gmail.com");
		 * message.setTo(mailDto.getAddress()); message.setSubject(mailDto.getTitle());
		 * message.setText(mailDto.getContent());
		 * 
		 * 
		 * emailSender.send(message);
		 */
        
    }
 
   
    public List<Map<String, Object>> memberMail() {
		List<Map<String, Object>> memberMail = memberMailDao.memberMail();
		
		return memberMail;
	}
}
