package camp.kh.semi.member.controller;



import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Certification;
import camp.kh.semi.member.model.vo.Users;

@Controller
@RequestMapping("/main/sendEmail")

public class SendEmailController {
	private Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired // bean으로 등록된 객체 중, 타입이 같거나 상속 관계인 bean을 주입해주는 역할.
	private CampService service;
	
	@Autowired
	private JavaMailSender mailSender;
	
	// 이메일 인증
	@GetMapping("/sendEmail")
	@ResponseBody
	public String sendEmail(String memberEmail) {
		
		
		// 인증번호 6자리 생성코드(영어 대/소문 + 숫자)
				String cNumber = "";
				for(int i=0 ; i< 6 ; i++) {
					
					int sel1 = (int)(Math.random() * 3); // 0:숫자 / 1,2:영어
					
					if(sel1 == 0) {
						
						int num = (int)(Math.random() * 10); // 0~9
						cNumber += num;
						
					}else {
						
						char ch = (char)(Math.random() * 26 + 65); // A~Z
						
						int sel2 = (int)(Math.random() * 2); // 0:소문자 / 1:대문자
						
						if(sel2 == 0) {
							ch = (char)(ch + ('a' - 'A')); // 대문자로 변경
						}
						
						cNumber += ch;
					}
					
				}
		
		
		
		String subject = "[CAMP404] 회원 가입 이메일 인증번호"; // 제목
		
		String fromEmail = "hyungju9753@gmail.com"; // 보내는 사람으로 표시될 이메일 (이메일 따라서 안될수도 있음)
		String fromUsername = "CAMP404"; // 보내는 사람 이름
		String toEmail= memberEmail;
		String content = 
                "CAMP404를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + cNumber + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		
	       try {
	            
	    	   
	            MimeMessage message = mailSender.createMimeMessage();
	            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
	            helper.setFrom(fromEmail);
	            helper.setTo(toEmail);
	            helper.setSubject(subject);
	            helper.setText(content,true);
	            mailSender.send(message);

	            
	            
	            
	        }catch(Exception e) {
	            e.printStackTrace();
	        }
		
	       int result = service.insertCertification(memberEmail, cNumber);
		
		
		logger.info("이메일 인증 이메일 : "+ memberEmail);
	return Integer.toString(result);	
	}

}
