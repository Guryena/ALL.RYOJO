package com.Allryojo.arj.db.service;

import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Allryojo.arj.db.mapper.DbJoinMapper;
import com.Allryojo.arj.db.vo.DbUserVO;

import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DbJoinService {

	@Autowired
	private DbJoinMapper dbJoinMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;

	// 2.아래는 select*from users;
	// 에는 들어가 있으나//select*from authorities 권한에는 안들어가 있음
	public void addDbUser2(DbUserVO dbUserVO) {
		log.info("addDbUser()..");

		String rawPassword = dbUserVO.getU_pw();
		String encPassword = passwordEncoder.encode(rawPassword);

		dbUserVO.setU_pw(encPassword);

		//System.out.println("====================" + dbUser);
		dbJoinMapper.insertUser(dbUserVO); // User를 insert를 넣은후

		// 일부러 에러냄
//	      dbUser = null;

//	      dbJoinMapper.insertAuthorities(user); // 권한 설정

	}
}