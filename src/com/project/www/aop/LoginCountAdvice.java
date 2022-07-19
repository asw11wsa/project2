package com.project.www.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoginCountAdvice {

	private long start;
	private long end;
	
	@After("execution(* com.project.www.controller.login.LoginController.loginProcess(..))")
	public void login() {
		start = System.currentTimeMillis();
	}
	@Before("execution(* com.project.www.controller.login.LoginController.logout(..))")
	public void logout() {
		end = System.currentTimeMillis();
		
		long timer = end-start;
		long min = (timer / (1000 * 60 )) % 60;
		long sec = (timer/1000) % 60;
		
		System.out.println("소요시간 : "+min+"분 "+sec+"초");
	}
	
	
	
	

	
}
