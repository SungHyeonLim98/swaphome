package org.swaphome.service;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.ReqMemberVO;
import org.swaphome.mapper.ReqMemberMapper;
import org.springframework.stereotype.Service;

@Service
public interface ReqMemberService {

	public void register(ReqMemberVO member);
	
	public ReqMemberVO get(int gNum);
	
	public int getCount();
	
	public boolean remove(int gNum);
	
	public List<ReqMemberVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
