package org.swaphome.mapper;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.MemberVO;
import org.swaphome.domain.ReqMemberVO;

public interface ReqMemberMapper {

public void insert(ReqMemberMapper member);
	
	public List<ReqMemberVO> getList();
	
	public List<ReqMemberVO> getListWithPaging(Criteria cri);
	
	public int getCount();

	public void insert(ReqMemberVO member);
	
	public int delete(int gNum);
	
	public ReqMemberVO read(int gNum);
	
	public int getTotalCount(Criteria cri);
	
}
