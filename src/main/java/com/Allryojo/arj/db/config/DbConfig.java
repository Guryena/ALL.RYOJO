package com.Allryojo.arj.db.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.Allryojo.arj.db.security.DbCustomDetailsService;

@Configuration // @Component + 의미(설정할수 있는 파일)
@EnableWebSecurity // 스프링 시큐리티 필터가 스프링 필터체인에 등록됨 = 스프링 시큐리티를 작동 시키는 파일 이라는걸 알려줌 - 스프링 한테.
public class DbConfig extends WebSecurityConfigurerAdapter {//deprecated 됨...

	@Autowired
	private DbCustomDetailsService dbCustomDetailsService;

	@Bean
	public PasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// 우선 CSRF설정을 해제한다.
		// 초기 개발시만 해주는게 좋다.
		http.csrf().disable();

		http.authorizeRequests().antMatchers("/user/**").hasAnyRole("USER").antMatchers("/admin/**").hasAnyRole("ADMIN")
				.antMatchers("/**").permitAll();

		// http.formLogin(); //스프링 시큐리티에 있는 기본 로그인 폼을 사용하겠다.
		http.formLogin()
			.loginPage("/login") // loginPage()는 말 그대로 로그인할 때 페이지 url 이고
			.usernameParameter("u_id")
			.passwordParameter("u_pw")
			.defaultSuccessUrl("/")
			.failureUrl("/login")
			.permitAll(); // 모든 유저가 로그인 화면은 볼 수 있게 한다.

	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {

		// auth.inMemoryAuthentication()
		// .withUser("user").password("{noop}user").roles("USER").and()
		// .withUser("admin").password("{noop}admin").roles("ADMIN");

		auth.userDetailsService(dbCustomDetailsService).passwordEncoder(new BCryptPasswordEncoder());

	}

}
