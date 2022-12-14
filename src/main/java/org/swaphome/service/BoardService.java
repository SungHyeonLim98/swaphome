package org.swaphome.service;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.springframework.stereotype.Service;
import org.swaphome.domain.BoardAttachVO;
import org.swaphome.domain.BoardVO;

@Service
public interface BoardService {

	public void register(BoardVO board);
	
	public BoardVO get(int bno);
	
	public int getCount();
	
	public boolean modify(BoardVO board);
	
	public boolean remove(int bno);
	
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public List<BoardAttachVO> getAttachList(int bno);
}
