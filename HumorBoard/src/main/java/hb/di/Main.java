package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.BoardDTO;
import hb.model.BoardMapper;
import hb.model.MembersDTO;
import hb.model.MembersMapper;

@Service
public class Main implements MainService {
	
	@Resource
	MembersMapper mm;
	@Resource
	BoardMapper bm;
	
	@Override
	public Object execute(MembersDTO dto) {
		BoardDTO boDto=new BoardDTO();
		boDto.setCate("자유");
		return bm.boardList(boDto);
	}

}
