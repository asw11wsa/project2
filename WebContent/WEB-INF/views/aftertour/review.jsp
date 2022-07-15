<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<div class="p-5">
	<h5>여행정보 : ${vo.title }</h5>
	<p>여행 지역 : ${vo.region }</p>
	<p>여행일자 : ${vo.tourdate }일</p>
	<hr>
	<form action="${pageContext.request.contextPath }/web/aftertour/insert" method="post" enctype="multipart/form-data">
		<input type="hidden" name="booker" value="test1">
		<input type="hidden" name="tournum" value="${vo.num}">
		<input type="hidden" name="booknum" value="100000">
		<label for="basic-url" class="form-label fs-3 fw-bold">여행후기</label>
		<div class="input-group mb-3">
		  <span class="input-group-text" id="basic-addon3">제목</span>
		  <input type="text" name="title" class="form-control" aria-describedby="basic-addon3">
		</div>
		<div class="input-group mb-3">
		  <span class="input-group-text">내용</span>
		  <textarea name="content" class="form-control" aria-label="With textarea"></textarea>
		</div>
		<div class="input-group mb-3">
		  <label class="input-group-text" for="inputGroupSelect01">별점</label>
		  <select name="stars" class="form-select" id="inputGroupSelect01">
		    <option value="5" selected>5</option>
		    <option value="4">4</option>
		    <option value="3">3</option>
		    <option value="2">2</option>
		    <option value="1">1</option>
		  </select>
		</div>
		<div class="input-group">
		  <input name="mfile" type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
		  <input class="btn btn-warning" type="submit" id="inputGroupFileAddon04" value="작성하기"/>
		</div>
	</form>
</div>