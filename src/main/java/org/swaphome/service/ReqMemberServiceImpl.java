package org.swaphome.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.swaphome.domain.Criteria;
import org.swaphome.domain.ReqMemberVO;
import org.swaphome.mapper.ReqMemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import lombok.Setter;

@Log4j
@Service
@AllArgsConstructor
@Repository
public class ReqMemberServiceImpl implements ReqMemberService {

	@Setter(onMethod_ = @Autowired)
	private ReqMemberMapper mapper;
	
	@Override
	public void register(ReqMemberVO member) {
		
		log.info("register...." + member);
		
		mapper.insert(member);
	}
	
	@Override
	public ReqMemberVO get(int gnum) {
		
		log.info("get....." + gnum);
		
		return mapper.read(gnum);
	}
	
	@Override
	public boolean remove(int gNum) {
		
		log.info("remove...." + gNum);
		
		return mapper.delete(gNum) == 1;
	}
	
	@Override
	public List<ReqMemberVO> getList(Criteria cri) {
		
		log.info("getList.....");
		
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
