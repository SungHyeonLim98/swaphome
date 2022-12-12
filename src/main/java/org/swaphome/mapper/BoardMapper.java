package org.swaphome.mapper;

import java.util.List;

import org.swaphome.domain.Criteria;
import org.swaphome.domain.BoardVO;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	public int getCount();
	
	public void insert(BoardVO board);
	
	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(int bno);
	
	public int delete(int bno);
	
	public int update(BoardVO board);
	
	public int getTotalCount(Criteria cri);
}
