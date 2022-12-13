package org.swaphome.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.swaphome.domain.Criteria;
import org.swaphome.domain.MemberVO;
import org.swaphome.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import lombok.Setter;

@Log4j
@Service
@AllArgsConstructor
@Repository
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public void register(MemberVO member) {
		
		log.info("register...." + member);
		
		mapper.insertSelectKey(member);
	}
	
	@Override
	public MemberVO get(int mNum) {
		
		log.info("get....." + mNum);
		
		return mapper.read(mNum);
	}
	
	@Override
	public int getCount() {
		return mapper.getCount();
	}
	
	@Override
	public int getGradeCount(int grade) {
		return mapper.getGradeCount(grade);
	}
	
	@Override
	public boolean modify(MemberVO member) {
		
		log.info("modify....." + member);
		
		return mapper.update(member) == 1;
	}
	
	@Override
	public boolean remove(int mNum) {
		
		log.info("remove...." + mNum);
		
		return mapper.delete(mNum) == 1;
	}
	
	@Override
	public List<MemberVO> getList(Criteria cri) {
		
		log.info("getList.....");
		
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
