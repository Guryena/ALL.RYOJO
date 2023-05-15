package com.Allryojo.arj.db.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class DbUserDetailsVO implements UserDetails {

	private String u_id; // ID
	private String u_pw; // PW
	private List<GrantedAuthority> authorities;

	public DbUserDetailsVO(DbUserVO dbUserVO) {
		this.setAuthorities(dbUserVO);
		this.setUsername(dbUserVO.getU_id());
		this.setPassword(dbUserVO.getU_pw());
	}

	// setter
	public void setUsername(String u_id) {
		this.u_id = u_id;
	}

	// setter
	public void setPassword(String u_pw) {
		this.u_pw = u_pw;
	}

	// setter
	public void setAuthorities(DbUserVO dbUserVO) {

		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (DbAuthVO auth : dbUserVO.getAuthList()) {

			authorities.add(new SimpleGrantedAuthority(auth.getA_name()));
		}

		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return u_id;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return u_pw;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
