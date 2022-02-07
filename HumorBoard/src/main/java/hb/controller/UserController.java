package hb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import hb.di.UserService;
import hb.model.MembersDTO;

@Controller
@RequestMapping("/mypage")
public class UserController {
	@Resource
	ContextProvider cp;
	
	@ModelAttribute("mainData")
	Object mainData(MembersDTO mbdto) {
		UserService ms=(UserService)cp.getContext().getBean("mymain",UserService.class);
		return ms.execute(mbdto);
	}
	
	@RequestMapping("/mymain")
	String mypageMain() {
		System.out.println("UserController mypageMain run()");
		return "/mypage/mymain";
	}
	
	@RequestMapping("/myInfo")
	String mypageInfo() {
		System.out.println("UserController mypageInfo run()");
		return "/mypage/myInfo";
	}
	
	@RequestMapping("/leaveAlert")
	String leaveAlert() {
		System.out.println("UserController leaveAlert run()");
		return "/mypage/leaveAlert";
	}
}
