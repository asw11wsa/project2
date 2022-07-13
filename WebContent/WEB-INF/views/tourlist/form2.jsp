<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article>
	<header>
		<h1>투어리스트 등록</h1>
	</header>
	<ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div>
		<form action="insert" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title"
					placeholder="제목 입력(4-20)" name="title" maxlength="20"
					required="required" pattern=".{4,20}">
			</div>
			<div class="form-group">
				<label for="region">지역</label>
				<input type="text" class="form-control" id="region" name="region"
				required="required"></input>
			</div>
			<div class="form-group">
				<label for="content">이름</label> <input type="text"
					class="form-control" id="content" placeholder="내용"
					name="content">
			</div>
			<div class="form-group">
				<label for="tourdate">날짜</label> <input type="number"
					class="form-control" id="tourdate"
					name="tourdate">
			</div>
			<div class="form-group">
				<label for="mfilea">사진1</label> <input type="file"
					class="form-control" id="mfilea"
					name="mfilea">
			</div>
			<div class="form-group">
				<label for="mfileb">사진2</label> <input type="file"
					class="form-control" id="mfileb"
					name="mfileb">
			<div class="form-group">
			</div>
				<label for="mfilec">사진3</label> <input type="file"
					class="form-control" id="mfilec"
					name="mfilec">		
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
			
		</form>
	</div>
</article>