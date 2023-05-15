package com.Allryojo.arj.db.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import com.Allryojo.arj.db.vo.DbUserVO;


@Mapper
public interface DbJoinMapper {
	public DbUserVO getUser(String u_id);

	@Insert("insert into users(u_id,u_pw,u_nickname,a_no) values(#{u_id},#{u_pw},#{u_nickname},1)")
	public int insertUser(DbUserVO dbUserVO);//유저의 아이디,비밀번호,닉네임,권한넘버(유저1,관리자0)을 넣어줌
	
	//	@Insert("insert into USERS(u_id,u_pw,u_nickname,a_no) values(#{u_id},#{u_pw},#{u_nickname},1)")
//	public int insertUser(DbUserVO dbUserVO);//유저의 아이디,비밀번호,닉네임,권한넘버(유저1,관리자0)을 넣어줌
	
	
//	@Insert("insert into users(u_id,u_pw,u_nickname) values(#{u_id},#{u_pw},#{u_nickname})")
//	public int insertUser(DbUserVO dbUserVO);//유저의 아이디,비밀번호,닉네임을 넣어줌
	
//	@Insert("insert into AUTHORITY (u_nickname,a_no) values(#{u_nickname},#{a_no})")
//	public void insertAuthorities(DbUserVO dbUserVO);//유저닉네임,관리자번호에 권한 부여
//
//	@Insert("insert into AUTHORITY (a_name,u_pw) values(#{a_name},#{u_pw})")
//	public void insertAdminAuthorities(DbUserVO dbUserVO);//관리자이름,비밀번호를 넣어줌
}