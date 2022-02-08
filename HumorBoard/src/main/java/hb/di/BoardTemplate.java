package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.BoardDTO;
import hb.model.BoardMapper;

@Service
public class BoardTemplate implements BoardService {
	@Resource
	BoardMapper bm;
	
	@Override
	public Object execute(BoardDTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
