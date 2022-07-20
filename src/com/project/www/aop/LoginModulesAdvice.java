package com.project.www.aop;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.project.www.dao.MemberDAOInter;
import com.project.www.dto.MemberDTO;

@Component
@Aspect
public class LoginModulesAdvice {
	
	 @Autowired
	 private MemberDAOInter memberDAOInter;
	 
	 @Around("execution(* com.project.www.controller.*.*Controller.loginProcess(..))")
	 public ModelAndView checkLogin(ProceedingJoinPoint jp) {
		ModelAndView mav = null;
		Object[] obj = jp.getArgs();
		HttpSession session = (HttpSession) obj[0];
		MemberDTO mdto = (MemberDTO) obj[1];
		String mid = mdto.getMid();
		int cnt = memberDAOInter.logingCheck(mdto);
		
		System.out.println(cnt);
		System.out.println(mid);
		int idchk = memberDAOInter.getId(mid);
		
		if(idchk==1) {
			String lock = null;
			int wrongCnt = 0;
			try {
				lock = memberDAOInter.getLock(mid);
				wrongCnt = memberDAOInter.getWrong(mid);
			} catch (Exception e) {
				lock = "";
				wrongCnt = 0;
			}
			
			try {
				Map<String, String> map = new HashMap<String, String>();
				if(wrongCnt>=5) {
					map.put("mid", mid);
					map.put("lock", "lock");
					memberDAOInter.lockMember(map);
				}else {
					map.put("mid", mid);
					map.put("lock", "unlock");
					memberDAOInter.lockMember(map);
				}
				
				mav = (ModelAndView) jp.proceed();
				if(lock.equals("lock")) {
					System.out.println("잠긴 아이디 입니다.");
					session.removeAttribute("sessionName");
					session.removeAttribute("sessionID");
					session.removeAttribute("sessionMnum");
					session.removeAttribute("sessionAdmin");
					mav.addObject("cnt", 4);
					return mav;
				}else {
					if(cnt==0) {
						memberDAOInter.wrongCntMember(mid);
						mav.addObject("cnt", 3);
						System.out.println("틀렸음");
					}else {
						memberDAOInter.cntInit(mid);
						System.out.println("아이디 비밀번호 맞음~");
						mav.addObject("cnt", 1);
						mdto = memberDAOInter.loginAfter(mdto);
						if(mdto.getMnum() <= 5) {
							session.setAttribute("sessionAdmin", 1);
						}else {
							session.setAttribute("sessionAdmin", 0);
						}
						session.setAttribute("sessionID", mdto.getMid());
						session.setAttribute("sessionName", mdto.getMname());
						session.setAttribute("sessionMnum", mdto.getMnum());
					}
					return mav;
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}else{
			try {
				mav = (ModelAndView) jp.proceed();
				mav.addObject("cnt", 2);
			} catch (Throwable e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return mav;
	 }
}
