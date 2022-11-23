package org.swaphome.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.swaphome.domain.Criteria;
import org.swaphome.domain.MessageVO;
import org.swaphome.mapper.MessageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import lombok.Setter;

@Log4j
@Service
@AllArgsConstructor
@Repository
public class MessageServiceImpl implements MessageService {

	@Setter(onMethod_ = @Autowired)
	private MessageMapper mapper;
	
	@Override
	public void register(MessageVO member) {
		
		log.info("register...." + member);
		
		mapper.insert(member);
	}
	
	@Override
	public MessageVO get(int pNum) {
		
		log.info("get....." + pNum);
		
		return mapper.read(pNum);
	}
	
	@Override
	public boolean remove(int pNum) {
		
		log.info("remove...." + pNum);
		
		return mapper.delete(pNum) == 1;
	}
	
	@Override
	public List<MessageVO> getList(Criteria cri) {
		
		log.info("getList.....");
		
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
