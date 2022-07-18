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

	 //PageListInter 를 getBean 받아오기 위해서 ..
	 @Autowired
	 private ApplicationContext applicationContext;
	
	 private  int nowPage = 1;// 현재 페이지 값
	 private  int nowBlock = 1;// 현재 블럭
	 private  int totalRecord = 0;// 총 게시물 수   
	 private  int numPerPage = 8;// 한 페이지당 보여질 게시물 수
	 private  int pagePerBlock = 5;// 한 블럭당 보여질 페이지 수
	 private  int totalPage = 0;// 전체 페이지 수 => totalRecord/numPerPage
	 private  int totalBlock = 0;// 전체 블럭 수   
	 private  int beginPerPage = 0;// 각 페이지별 시작 게시물의 index값
	 private  int endPerPage = 0;// 각 페이지별 마지막 게시물의 index값  
	 
	 @Around("execution(* com.project.www.controller.*.*Controller.*List(..))")
	 public String pageModule(ProceedingJoinPoint jp) {
		 Object[] args = jp.getArgs();
		 Model m = (Model) args[0];
		 // 2번째 인자로 SearchPageDTO를 가져와서 페이징 처리
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
			
			// dto 에 생성자로 초기화를 해서 기본으로 cPage = 1 이 있기 때문에  if문처리를 안해됨
			nowPage = Integer.parseInt(dto.getcPage());
			
			beginPerPage = (nowPage - 1) * numPerPage + 1;
			endPerPage = (beginPerPage-1) + numPerPage;
			dto.setStart(beginPerPage);
			dto.setEnd(endPerPage);
			//dto 를 전달해서 데이터 베이스에서 list를 출력하도록 한다.
		    List<? extends SuperDTO> list = pageListInter.getList(dto);
		    
		    // 데이터 베이스에서 가져온 list 를 jsp 파일에서 사용할수 있도록 전달
		    m.addAttribute("list", list);
			int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
			int endPage = startPage + pagePerBlock - 1;
			if(endPage > totalPage){
				endPage = totalPage;
		    }
			System.out.println("startPage:"+startPage);
			System.out.println("endPage:"+endPage);
			
			// 검색을 할경우에 값을 jsp 에 전달해서 검색이 유지 되도록 하는 코드
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







