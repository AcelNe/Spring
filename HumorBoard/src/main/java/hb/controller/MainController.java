package hb.controller;

import javax.annotation.Resource;

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
	String running() {
		System.out.println("MainController running run()");
		return "main";
	}
	
	@RequestMapping("/loginsuccess")
	String loginpage(MembersDTO dto) {
		System.out.println("MainController loginpage run()");
		return "loginsuccess";
	}
}
