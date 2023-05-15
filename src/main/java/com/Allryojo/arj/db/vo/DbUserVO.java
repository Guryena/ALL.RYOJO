package com.Allryojo.arj.db.vo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class DbUserVO  {
   private String u_id;
   private String u_pw;
   private String u_nickname;
   private int a_no;
   
   private List<DbAuthVO> authList;
   
   

}
