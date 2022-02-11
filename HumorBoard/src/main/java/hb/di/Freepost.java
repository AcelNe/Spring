package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.BoardDTO;
import hb.model.BoardMapper;

@Service
public class Freepost implements BoardService {
	@Resource
	BoardMapper bm;
	
	@Override
	public Object execute(BoardDTO dto) {
		System.out.println("freeInsert.java execute() run");
		return null;
	}
}