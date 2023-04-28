package camp.kh.semi.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

// 메인 화면 이동용 컨트롤러

@Controller
public class HomeController {
	private Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/home")
	public String mainForward() {


		logger.info("메인 페이지로 이동");
		return "home/home";
		}
}