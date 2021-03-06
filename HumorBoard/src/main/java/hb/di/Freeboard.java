package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.BoardDTO;
import hb.model.BoardMapper;

@Service
public class Freeboard implements BoardService {
	@Resource
	BoardMapper bm;
	
	@Override
	public Object execute(BoardDTO dto) {
		dto.setCate("자유");		
		return bm.boardList(dto);
	}
}
