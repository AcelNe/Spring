package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.MembersDTO;
import hb.model.MembersMapper;

@Service
public class JoinAlert implements JoinService {
	
	@Resource
	MembersMapper mm;
	
	@Override
	public Object execute(MembersDTO dto) {
		return null;
	}

}
