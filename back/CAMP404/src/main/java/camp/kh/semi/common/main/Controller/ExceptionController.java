package camp.kh.semi.common.main.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class)
	public String exceptionHandler(Exception e, Model model) {
			e.printStackTrace();
			
			model.addAttribute("errorMessage", "서비스 이용중 문제 발생");
			model.addAttribute("e", e); //위에 Exception e

			return "common/error";
		}
}
