<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article >
<div class="container">   
 <header>
     <h1>���� ����</h1>
</header>
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
      <input type="hidden" name="inum" id="inum" value="${vo.inum }">

  <div class="form-group">
      <label for="inum">��ȣ</label>
      <input type="text" class="form-control" id="inum" value="${vo.inum }" readonly="readonly">
   </div>
  <div class="form-group">
      <label for="isub">����</label>
      <input type="text" class="form-control" id="isub" value="${vo.isub }" readonly="readonly">
   </div>
    <label for="icont">���ǳ���</label>
   <div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" 
  style="height: 100px"  readonly="readonly">${vo.icont }</textarea>
</div>
   
      <div class="form-group">
      <label for="iwriter">�ۼ���</label>
      <input type="text" class="form-control" id="iwriter" value="${vo.iwriter }" readonly="readonly">
   </div>
      <div class="form-group">
      <label for="iadmincom">�亯����</label>
      
      <input type="text" class="form-control" id="iadmincom" value="${vo.iadmincom }" readonly="readonly">
         </div>
      <div class="form-group">
      <label for="istate">�������</label>
      <input type="text" class="form-control" id="istate" value="${vo.istate }" readonly="readonly">
   </div>
   
      <div class="form-group">
      <label for="idate">�ۼ���¥</label>
      <input type="text" class="form-control" id="idate" value="${vo.idate }" readonly="readonly">
   </div>
   
<div class="form-group">
<button type="button" class="btn btn-secondary" onclick="location='${pageContext.request.contextPath}/web/qna/qnaupForm?inum=${vo.inum }'" >����</button>
<button type="submit" class="btn btn-primary" onclick="location='${pageContext.request.contextPath}/web/qna/delete?inum=${vo.inum }'">����</button>
</div>
   </div>
</article>

