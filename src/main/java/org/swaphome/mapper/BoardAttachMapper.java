package org.swaphome.mapper;

import java.util.List;

import org.swaphome.domain.BoardAttachVO;

public interface BoardAttachMapper {

	public void insert(BoardAttachVO vo);
	
	public void delete(String uuid);
	
	public List<BoardAttachVO> findByBno(int bno);
}
