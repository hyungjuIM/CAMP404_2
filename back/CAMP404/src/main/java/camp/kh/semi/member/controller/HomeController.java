package camp.kh.semi.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import camp.kh.semi.member.model.service.CampService;
import camp.kh.semi.member.model.vo.Lecture;

// 메인 화면 이동용 컨트롤러

@Controller
@SessionAttributes({"lecture", "bestClassList","frontClassList",  "backClassList", "dataBaseClass", "osClassList"})
public class HomeController {
	private Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CampService service;
	
	@RequestMapping("/home")
	
	public String mainForward(
			Model model
			,HttpSession session
			, Lecture lecture
			) {
		List<Lecture> bestClassList = service.getClassItems(1);
		List<Lecture> frontClassList = service.getClassItems(2);
		List<Lecture> backClassList = service.getClassItems(3);
		List<Lecture> dataBaseClass = service.getClassItems(4);
		List<Lecture> osClassList = service.getClassItems(5);
		

		
		System.out.println("DB에서 강의 자료를 가지고 옴");
		
		session.setAttribute("bestClassList", bestClassList);
		session.setAttribute("frontClassList", frontClassList);
		session.setAttribute("backClassList", backClassList);
		session.setAttribute("dataBaseClass", dataBaseClass);
		session.setAttribute("osClassList", osClassList);
	
		logger.info("메인 페이지로 이동");
		return "home/home";
		}
	

	
	
//	@GetMapping("/") // 메인 화면에 접속할 시 실행하기
//	public void getClassItems(
//			Model model
//			, Lecture lecture
//			) {
//		List<Lecture> list = null;
//		int catNo = 1;
//		list = service.getClassItems(catNo);
//		System.out.println("DB에서 강의 자료를 가지고 옴");
//		model.addAttribute("list", list);
//	}
	
}