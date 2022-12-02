package org.swaphome.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class BoardVO {

	private int bno;
	private String title;
	private String contents;
	private String writer;
	private String category;
	private Date regdate;
	private Date updatedate;
	
	private int replyCnt;
	
	private List<BoardAttachVO> attachList;
}
