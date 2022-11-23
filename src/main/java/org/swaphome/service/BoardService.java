package org.swaphome.service;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.BoardVO;

public interface BoardService {

	public void register(BoardVO board);
	
	public BoardVO get(int bno);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(int bno);
	
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
}
