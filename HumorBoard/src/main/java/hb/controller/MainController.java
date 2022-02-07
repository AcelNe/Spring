package hb.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import hb.di.MainService;
import hb.model.MembersDTO;

@Controller
public class MainController {
	@Resource
	ContextProvider cp;
	
	@ModelAttribute("mainData")
	Object mainData(MembersDTO mbdto) {
		MainService ms=(MainService)cp.getContext().getBean("main",MainService.class);
		return ms.execute(mbdto);
	}
	
	@RequestMapping("/main")
	String mainPage() {
		System.out.println("MainController mainPage run()");
		return "main";
	}
	
	@RequestMapping("/login")//login Page
	String loginPage() {
		System.out.println("MainController loginPage run()");
		return "login_out/login";
	}
	
	@RequestMapping("/loginsuccess") //login 성공하면 전환되는 page
	String loginpage() {
		System.out.println("MainController loginpage run()");
		return "login_out/loginsuccess";
	}
	
	@RequestMapping("/logout")
	String logoutPage() {
		System.out.println("MainController logoutPage run()");
		return "login_out/logout";
	}
}
