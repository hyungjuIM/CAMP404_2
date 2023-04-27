package camp.kh.semi.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ClassController {
	
	@GetMapping(value ="/classroom/frontClass")
	public void class03() {
		System.out.println("강의3으로 이동");
		}
}
