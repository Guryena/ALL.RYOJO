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
public class BoardContentVO { // users테이블, comments테이블, board 테이블을 조인한 VO클래스

// select * from users a, comments b, board c where a.u_id = b.u_id and b.b_no= c.b_no;
	private String u_id;
	private String u_pw;
	private String u_nickname;
	private int a_no;

	private int c_no;
	private String c_time;
	private String c_content;
	private int b_no;

	private String b_title;
	private String b_content;
	private String b_time;
	private String b_hit;

}
