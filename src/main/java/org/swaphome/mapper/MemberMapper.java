package org.swaphome.mapper;

import java.util.List;

import org.swaphome.domain.MemberVO;
import org.swaphome.domain.Criteria;

public interface MemberMapper {

	public List<MemberVO> getList();
	
	public List<MemberVO> getListWithPaging(Criteria cri);
	
	public void insert(MemberVO member);
	
	public void insertSelectKey(MemberVO member);
	
	public MemberVO read(int mNum);
	
	public int delete(int mNum);
	
	public int update(MemberVO member);
	
	public int getTotalCount(Criteria cri);
}
