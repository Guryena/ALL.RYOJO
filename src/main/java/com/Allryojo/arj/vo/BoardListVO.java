package com.Allryojo.arj.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
@AllArgsConstructor
public class BoardListVO { // users테이블과 board 테이블 조인한 VO클래스

	//select * from users,board where users.u_id = board.u_id;
	private String u_id;
	private String u_pw;
	private String u_nickname;
	private int a_no;
	private int b_no;
	private String b_title;
	private String b_content;
	private String b_time;
	private String b_hit;
}
