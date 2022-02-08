package hb.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import hb.di.BoardService;
import hb.di.JoinService;
import hb.model.BoardDTO;
import hb.model.UrlDTO;

@Controller
public class BoardController {
	@Resource
	ContextProvider cp;
	
	@ModelAttribute("cate")
	String cate() {
		System.out.println("BoardController cate run()");
		return "board";
	}
	
	@ModelAttribute("mainData")
	Object mainData(UrlDTO url, BoardDTO dto) {
		System.out.println("BoardController mainData run()");
		BoardService ms=(BoardService)cp.getContext().getBean(url.getService(),BoardService.class);
		return ms.execute(dto);
	}
	
	@RequestMapping("board/{service}")
	String pageRuning(UrlDTO url) {
		System.out.println("BoardController pageRunning run(): "+url.getService());
		return "boardTemplate";
	}
}
