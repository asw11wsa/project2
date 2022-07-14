<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form>
	<input type="hidden" name="tournum" value="${num }"/>
	<h3 class="p-3">예약하기</h3>
	<c:forEach var="i" begin="1" end="${adult }">
		<div class="mb-2 px-5 mt-3">
			<p class="fw-bold fs-4">어른${i}</p>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">이름</span>
			  <input type="text" class="form-control" placeholder="Name" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">주민번호</span>
			  <input type="text" class="form-control" placeholder="991212000000" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">영어이름(성)</span>
			  <input type="text" class="form-control" placeholder="Kim" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">영어이름(이름)</span>
			  <input type="text" class="form-control" placeholder="Sim" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">전화번호</span>
			  <input type="text" class="form-control" placeholder="01011112222" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">이메일</span>
			  <input type="text" class="form-control" placeholder="hello@gmail.com" aria-label="Username" aria-describedby="jumin">
			</div>
		</div>
	</c:forEach>
	<c:forEach var="i" begin="1" end="${children }">
		<div class="mb-2 px-5 mt-3">
			<p class="fw-bold fs-4">아이${i}</p>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">이름</span>
			  <input type="text" class="form-control" placeholder="Name" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">주민번호</span>
			  <input type="text" class="form-control" placeholder="991212000000" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">영어이름(성)</span>
			  <input type="text" class="form-control" placeholder="Kim" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">영어이름(이름)</span>
			  <input type="text" class="form-control" placeholder="Sim" aria-label="Username" aria-describedby="jumin">
			</div>
			<div class="input-group flex-nowrap mb-1">
			  <span class="input-group-text" style="width:8rem" id="name">전화번호</span>
			  <input type="text" class="form-control" placeholder="01011112222" aria-label="Username" aria-describedby="name">
			  <span class="input-group-text" style="width:8rem" id="jumin">이메일</span>
			  <input type="text" class="form-control" placeholder="hello@gmail.com" aria-label="Username" aria-describedby="jumin">
			</div>
		</div>
	</c:forEach>
	<div class="d-grid gap-5 mx-5 mt-3">
	  <button class="btn btn-primary" type="button">신청하기</button>
	</div>
</form>
