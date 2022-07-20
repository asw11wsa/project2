package com.project.www.aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AdminCheckAdivce {
	
	@After("execution(* com.project.www.controller.contact.AdminContactController.*(..))")
	public String checkAdmin(JoinPoint jp) {
		Object[] args = jp.getArgs();
		HttpSession session = (HttpSession)args[2];
		
		if((int)session.getAttribute("sessionAdmin") != 1) {
			System.out.println("���� �����ڰ� �ƴմϴ�.");
			return "redirect:/web/main";
		}else {
			System.out.println("���� ������");
			return "redirect:/web/admin/contact/list";
		}
	}
}
