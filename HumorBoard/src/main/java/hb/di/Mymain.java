package hb.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hb.model.MembersDTO;
import hb.model.MembersMapper;

@Service
public class Mymain implements UserService {
	
	@Resource
	MembersMapper mm;
	
	@Override
	public Object execute(MembersDTO dto) {
		System.out.println("Mymain.java execute run()");
		return null;
	}

}
