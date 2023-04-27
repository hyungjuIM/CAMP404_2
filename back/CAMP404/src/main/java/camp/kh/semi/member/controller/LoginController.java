package camp.kh.semi.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
// 컨트롤러 역할을 한다고 명시해주는 역할을 하는 어노테이션.
public class LoginController {

@GetMapping(value ="member/login")
public void login() {
		System.out.println("로그인 페이지로 이동");
	}
}
