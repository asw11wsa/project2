<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form>
	<input type="hidden" name="tournum" value="${num }"/>
	<h3 class="p-3">�����ϱ�</h3>
	<c:forEach var="i" begin="1" end="${adult }">
		<div class="mb-2 px-5 mt-3">
			<p class="fw-bold fs-4">�${i}</p>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">�̸�</span>
			  <input type="text" class="form-control" placeholder="Name" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�ֹι�ȣ</span>
			  <input type="text" class="form-control" placeholder="991212000000" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">�����̸�(��)</span>
			  <input type="text" class="form-control" placeholder="Kim" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�����̸�(�̸�)</span>
			  <input type="text" class="form-control" placeholder="Sim" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">��ȭ��ȣ</span>
			  <input type="text" class="form-control" placeholder="01011112222" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�̸���</span>
			  <input type="text" class="form-control" placeholder="hello@gmail.com" aria-label="Username" aria-describedby="jumin">
			</div>
		</div>
	</c:forEach>
	<c:forEach var="i" begin="1" end="${children }">
		<div class="mb-2 px-5 mt-3">
			<p class="fw-bold fs-4">����${i}</p>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">�̸�</span>
			  <input type="text" class="form-control" placeholder="Name" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�ֹι�ȣ</span>
			  <input type="text" class="form-control" placeholder="991212000000" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">�����̸�(��)</span>
			  <input type="text" class="form-control" placeholder="Kim" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�����̸�(�̸�)</span>
			  <input type="text" class="form-control" placeholder="Sim" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">��ȭ��ȣ</span>
			  <input type="text" class="form-control" placeholder="01011112222" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">�̸���</span>
			  <input type="text" class="form-control" placeholder="hello@gmail.com" aria-label="Username" aria-describedby="jumin">
			</div>
		</div>
	</c:forEach>
	<div class="d-grid gap-5 mx-5 mt-3">
	  <button class="btn btn-primary" type="button">��û�ϱ�</button>
	</div>
</form>
