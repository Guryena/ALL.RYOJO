package com.Allryojo.arj.db.security;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.Allryojo.arj.db.mapper.DbJoinMapper;
import com.Allryojo.arj.db.mapper.DbLoginMapper;
import com.Allryojo.arj.db.vo.DbUserDetailsVO;
import com.Allryojo.arj.db.vo.DbUserVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DbCustomDetailsService implements UserDetailsService {

   @Autowired
   private DbLoginMapper dbLoginMapper;
   
   @Override
   public UserDetails loadUserByUsername(String u_id) throws UsernameNotFoundException {
      
      log.warn("Load User By DbUserVO number: " + u_id);
      DbUserVO dbUserVO = dbLoginMapper.getUser(u_id);

      log.warn("queried by DbUserVO mapper: " + dbUserVO);

      return dbUserVO == null ? null : new DbUserDetailsVO(dbUserVO);      
   }

}