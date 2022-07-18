package com.project.www.aop;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.project.www.dao.PageListInter;
import com.project.www.dto.SearchPageDTO;
import com.project.www.dto.SuperDTO;


@Component
@Aspect
public class PageModulesAdvice {

	 //PageListInter �� getBean �޾ƿ��� ���ؼ� ..
	 @Autowired
	 private ApplicationContext applicationContext;
	
	 private  int nowPage = 1;// ���� ������ ��
	 private  int nowBlock = 1;// ���� ��
	 private  int totalRecord = 0;// �� �Խù� ��   
	 private  int numPerPage = 8;// �� �������� ������ �Խù� ��
	 private  int pagePerBlock = 5;// �� ���� ������ ������ ��
	 private  int totalPage = 0;// ��ü ������ �� => totalRecord/numPerPage
	 private  int totalBlock = 0;// ��ü �� ��   
	 private  int beginPerPage = 0;// �� �������� ���� �Խù��� index��
	 private  int endPerPage = 0;// �� �������� ������ �Խù��� index��  
	 
	 @Around("execution(* com.project.www.controller.*.*Controller.*List(..))")
	 public String pageModule(ProceedingJoinPoint jp) {
		 Object[] args = jp.getArgs();
		 Model m = (Model) args[0];
		 // 2��° ���ڷ� SearchPageDTO�� �����ͼ� ����¡ ó��
		 SearchPageDTO dto = (SearchPageDTO) args[1];
		 
		 String myDao = jp.getSignature().getName();
		 System.out.println("myDao =>"+myDao);
		 PageListInter pageListInter =   applicationContext.getBean(myDao,PageListInter.class);
		String url=null;
		try {
			url = (String) jp.proceed();
			
			 totalRecord = (int) m.asMap().get("totalRecord");
			 
			totalPage = (int) Math.ceil(totalRecord/(double)numPerPage);
			totalBlock = (int) Math.ceil((double) totalPage/pagePerBlock);
			
			// dto �� �����ڷ� �ʱ�ȭ�� �ؼ� �⺻���� cPage = 1 �� �ֱ� ������  if��ó���� ���ص�
			nowPage = Integer.parseInt(dto.getcPage());
			
			beginPerPage = (nowPage - 1) * numPerPage + 1;
			endPerPage = (beginPerPage-1) + numPerPage;
			dto.setStart(beginPerPage);
			dto.setEnd(endPerPage);
			//dto �� �����ؼ� ������ ���̽����� list�� ����ϵ��� �Ѵ�.
		    List<? extends SuperDTO> list = pageListInter.getList(dto);
		    
		    // ������ ���̽����� ������ list �� jsp ���Ͽ��� ����Ҽ� �ֵ��� ����
		    m.addAttribute("list", list);
			int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
			int endPage = startPage + pagePerBlock - 1;
			if(endPage > totalPage){
				endPage = totalPage;
		    }
			System.out.println("startPage:"+startPage);
			System.out.println("endPage:"+endPage);
			
			// �˻��� �Ұ�쿡 ���� jsp �� �����ؼ� �˻��� ���� �ǵ��� �ϴ� �ڵ�
			m.addAttribute("searchkey", dto.getSearchkey());
			m.addAttribute("searchval", dto.getSearchval());
			m.addAttribute("startPage", startPage);
			m.addAttribute("endPage", endPage);
			m.addAttribute("nowPage", nowPage);
			m.addAttribute("pagePerBlock", pagePerBlock);
			m.addAttribute("totalPage",totalPage);
		} catch (Throwable e) {
			e.printStackTrace();
		}
		 return url;
	 }
}







