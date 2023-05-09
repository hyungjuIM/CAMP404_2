package camp.kh.semi.member.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import camp.kh.semi.member.model.service.CampService;

@Controller
@RequestMapping("/main")
public class CheckNumberController {
@Autowired
private CampService service;

@GetMapping("/sendEmail")
@ResponseBody
public int sendCertificationCode(HttpServletRequest req, Model model) throws Exception {
    String email = req.getParameter("userEmail");
   int result = service.sendCertificationCode(email);
    model.addAttribute("email", email);
    return result;
}

@GetMapping("/checkNumber")
@ResponseBody
public int confirmCertificationCode(HttpServletRequest req, Model model) {
    String email = req.getParameter("userEmail");
    String cNumber = req.getParameter("cNumber");
   int result = service.isValidCertification(email, cNumber);
    if (result == 1) {
        model.addAttribute("message", "�씤利앹뿉 �꽦怨듯븯���뒿�땲�떎.");
    } else if(result == 2){
        model.addAttribute("message", "�씤利앸쾲�샇媛� 留뚮즺 �릺�뿀�뒿�땲�떎.");
    }else {
    	model.addAttribute("message", "�씤利앸쾲�샇媛� �삱諛붾Ⅴ吏� �븡�뒿�땲�떎.");
    	
    }
    return result;
}

}
