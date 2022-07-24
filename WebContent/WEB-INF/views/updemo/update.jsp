<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<article>
	<header>
		<h1>update Form</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<fieldset>
		<legend>이미지 업로드 폼</legend>

		<form method="post" action="update" enctype="multipart/form-data"
			id="upform">
			<input type="hidden" id="bnum" name="bnum" value="${vo.bnum }">
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">제 목</label>
				<div class="col-sm-10">
					<input type="text" name="bsub" id="bsub" value="${vo.bsub }"
						placeholder="제목을 입력하세요." />
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">국내/해외</label>
					<div>
						<select name="category" id="category">
							<option value="국내" selected>국내</option>
							<option value="해외">해외</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">작성자</label>
				<div class="col-sm-10">
					<input type="text" name="bwriter" id="bwriter"
						value="${vo.bwriter }" readonly="readonly" />
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">*이미지업로드</label>
				<div class="col-sm-10">
					<input type="file" name="bfile" id="bfile" />
				</div>
				<div class="col-sm-10">
					<img
						src="${pageContext.request.contextPath}/resources/imgfile/${vo.bimg }"
						id="bimg" style="width: 100px;">
				</div>
			</div>
			<div class="row mb-3">
				<label class="col-sm-2 col-form-label">이미지 내용</label>
				<textarea name="bcont" id="bcont" rows="5" cols="13">${vo.bcont }</textarea>
			</div>

			<div class="row mb-3 ">
				<div class="col-sm-10">
					<input type="submit" value="등록" id="btn1" class="btn btn-info" />
				</div>
			</div>
		</form>
	</fieldset>
</article>

