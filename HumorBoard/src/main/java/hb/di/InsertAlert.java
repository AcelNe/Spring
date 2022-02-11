package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.BoardDTO;
import hb.model.BoardMapper;

@Service
public class InsertAlert implements BoardService {
	@Resource
	BoardMapper mm;

	@Override
	public Object execute(BoardDTO dto) {
		System.out.println("freeAlert.java execute run()");
		return null;
	}
}
