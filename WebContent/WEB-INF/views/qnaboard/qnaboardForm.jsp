<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<article >
<div class="container">      
 <header>
     <h1>�����ϱ�</h1>
</header>
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
<form method="post" action="qboard" >

<div class="row mb-3">
	<label class="col-sm-2 col-form-label">��  ��</label>
	<div class="col-sm-10"><input type="text" name="isub" id="isub"/></div>
	<div class="col" id="target"></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">�ۼ���</label>
	<div class="col-sm-10"><input type="text" id="iwriter" name="iwriter" value="${sessionScope.sessionID}" readonly="readonly"/></div>
</div>
<div class="row mb-3">
	<label class="col-sm-2 col-form-label">���� ����</label>
	<textarea name="icont" id="icont" rows="10" cols="13"></textarea>
</div>
<div class="form-group" style="text-align: right; margin-top: 10px;">
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">���</button>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">1:1 ���� �Խñ� �ۼ�</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <p align="center">��� ��ư�� ������ �ۼ��� ���� ����� �˴ϴ�.</p>
       <p align="center">����Ͻðڽ��ϱ�?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">���</button>
        <button type="submit" class="btn btn-primary">���</button>
      </div>
    </div>
  </div>
</div>
</div>
</form>
</div>
</article>