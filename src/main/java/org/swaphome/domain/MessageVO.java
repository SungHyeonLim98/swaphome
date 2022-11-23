package org.swaphome.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MessageVO {

	private int pnum;
	private int gnum;
	private String title;
	private String contents;
	private String name;
	private Date regdate;
}
