package org.swaphome.mapper;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.MemberVO;
import org.swaphome.domain.MessageVO;

public interface MessageMapper {

	public List<MessageVO> getList();
	
	public List<MessageVO> getListWithPaging(Criteria cri);

	public void insert(MessageVO message);
	
	public int delete(int pNum);
	
	public MessageVO read(int pNum);
	
	public int getTotalCount(Criteria cri);
}
