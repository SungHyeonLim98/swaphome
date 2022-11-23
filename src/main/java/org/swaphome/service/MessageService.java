package org.swaphome.service;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.MessageVO;
import org.swaphome.mapper.MessageMapper;
import org.springframework.stereotype.Service;

@Service
public interface MessageService {

	public void register(MessageVO message);
	
	public MessageVO get(int pNum);
	
	public boolean remove(int pNum);
	
	public List<MessageVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
