<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article >
<div class="container">      
 <header>
     <h1>���� ����</h1>
</header>
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
<form method="post" action="upqnaboard" >
<input type="hidden" name="inum" id="inum" value="${vo.inum }">
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">��  ��</label>
	<div class="col-sm-10"><input type="text" name="isub" id="isub"  value="${vo.isub }"/></div>
	<div class="col" id="target"></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">�ۼ���</label>
	<div class="col-sm-10"><input type="text" id="iwriter" name="iwriter" 
	value="${sessionScope.sessionID}" readonly="readonly"/></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">���� ����</label>
	<textarea name="icont" id="icont" rows="10" cols="13"></textarea>
</div>
<div class="form-group" style="text-align: right; margin-top: 10px;">
   
        <button type="button" class="btn btn-primary" >���</button>
        <button type="submit" class="btn btn-primary">����</button>
      </div>
   
</form>
</div>
</article>