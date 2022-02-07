package hb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import hb.di.MainService;
import hb.model.MembersDTO;

@Controller
@RequestMapping("/join")
public class JoinController {
	@Resource
	ContextProvider cp;
	
	@ModelAttribute("mainData")
	Object mainData(MembersDTO mbdto) {
		MainService ms=(MainService)cp.getContext().getBean("main",MainService.class);
		return ms.execute(mbdto);
	}
	
	@RequestMapping("/joinForm")
	String joinFormPage() {
		System.out.println("JoinController joinFormPage run()");
		return "/join/joinForm";
	}
	
	@RequestMapping("/joinAlert")
	String joinAlertPage() {
		System.out.println("JoinController joinAlertPage run()");
		return "/join/joinAlert";
	}
}
