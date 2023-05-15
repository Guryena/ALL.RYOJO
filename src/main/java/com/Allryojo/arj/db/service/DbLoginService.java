package com.Allryojo.arj.db.service;


import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.Allryojo.arj.db.mapper.DbLoginMapper;
import com.Allryojo.arj.db.vo.DbUserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DbLoginService {

   @Autowired
   private DbLoginMapper dbLoginMapper;
   
   //2.아래는 select*from users;
   //에는 들어가 있으나//select*from authorities 권한에는 안들어가 있음
   public void addDbUser2(DbUserVO dbUserVO) {
	      log.info("addDbUser()..");

	      dbLoginMapper.insertUser(dbUserVO); // User를 insert를 넣은후	      
	       
	      //일부러 에러냄
	      //dbUserVO = null;
	      
//	      userMapper.insertAuthorities(dbUser); // 권한 설정

	   }

}
   
//   //4.checked Exception을 강제로 시켜 봄 //롤백 되지 않음
//   @Transactional
//   public void addUser4(DbUserVO dbUser) throws Exception {
//      log.info("addUser()..");
//
//      userMapper.insertUser(dbUser); // User를 insert를 넣은후
//      //userMapper.insertAuthorities(dbUser);mapper에서 권한부여 부분(추후 넣을예정(mapper에서 autorities사용시))
//
//      // throw Checked Exception
//      throw new Exception("Exception (Checked Exception)");
//   }