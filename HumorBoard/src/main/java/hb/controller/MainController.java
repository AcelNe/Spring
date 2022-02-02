package hb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@Resource
	ContextProvider cp;
	
	@ModelAttribute("mainData")
	Object mainData() {
		return null;
	}
	
	@RequestMapping("/main")
	String running() {
		System.out.println("MainControllor running run()");
		return null;
	}
}
