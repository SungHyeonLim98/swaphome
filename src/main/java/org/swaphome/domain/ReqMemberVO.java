package org.swaphome.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ReqMemberVO {

	private String name;
	private int gnum;
	private int grade;
	private String cls;
	private String regnum;
	private String phone;
	private String address;
	private String academic;
	private String myself;
	private String motive;
	private String action;
	private String advantages;
	private Date regdate;
	private Date updateDate;
}
