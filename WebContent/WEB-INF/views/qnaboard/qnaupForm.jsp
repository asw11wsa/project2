<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article >
<div class="container">      
 <header>
     <h1>문의 수정</h1>
</header>
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
<form method="post" action="upqnaboard" >
<input type="hidden" name="inum" id="inum" value="${vo.inum }">
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">제  목</label>
	<div class="col-sm-10"><input type="text" name="isub" id="isub"  value="${vo.isub }"/></div>
	<div class="col" id="target"></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">작성자</label>
	<div class="col-sm-10"><input type="text" id="iwriter" name="iwriter" 
	value="${sessionScope.sessionID}" readonly="readonly"/></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">문의 내용</label>
	<textarea name="icont" id="icont" rows="10" cols="13"></textarea>
</div>
<div class="form-group" style="text-align: right; margin-top: 10px;">
   
        <button type="button" class="btn btn-primary" >취소</button>
        <button type="submit" class="btn btn-primary">수정</button>
      </div>
   
</form>
</div>
</article>