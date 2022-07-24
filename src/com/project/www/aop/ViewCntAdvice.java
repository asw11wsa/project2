package com.project.www.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.project.www.dao.BoardDaoInter;

@Aspect
@Component
public class ViewCntAdvice {
	@Autowired
    private BoardDaoInter boardDaoInter;

    @Before("execution(* com.project.www.controller.board.BoardController.getDetail(..))")
    public void boardCount(JoinPoint jp) {
        Object[] args = jp.getArgs();
        int bnum = (int) args[1];
        //System.out.println("cview : "+dto.getCview()); //0
        boardDaoInter.cntBoardView(bnum);
    }
    
    
}
