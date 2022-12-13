package org.swaphome.service;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.MemberVO;
import org.swaphome.mapper.MemberMapper;
import org.springframework.stereotype.Service;

@Service
public interface MemberService {

	public void register(MemberVO member);
	
	public MemberVO get(int mNum);
	
	public int getCount();
	
	public int getGradeCount(int grade);
	
	public boolean modify(MemberVO member);
	
	public boolean remove(int mNum);
	
	public List<MemberVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
