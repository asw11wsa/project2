<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<article>
		<header>
            <h1>Qna Comment</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardForm 들어 갈 자리 --%>
			<fieldset>
					<legend>1대1 문의</legend>
					<%-- action은 UploadDemoController @PostMapping(value = "/이곳과 동일해야한다") --%>
					<form method="post" action="update" id="upform">
						<input type="hidden" name="inum" id="inum" value="${dto.inum }">
						<div>	
							<label>제 목 : </label>
							<input type="text" name="isub" id="isub"  value="${dto.isub }" readonly="readonly"/>
						</div>
						<br>
						<div>
							<label>작성자 : </label>
							<input type="text" name="iwriter" id="iwriter" value="${dto.iwriter }" readonly="readonly"/>
						</div>
						<br>
						<div class="col-sm-10">
							<label class="">문의 내용 : </label>
    						<textarea name="icont" id="icont" rows="5" cols="100">${dto.icont }</textarea>
						</div>
						<br>
						<div>
							<label>날 짜 : </label>
							<input type="text" name="idate" id="idate" value="${dto.idate }" readonly="readonly"/>
						</div>
						<br>
						<div>
							<label class="">답 변 : </label>
    						<textarea name="iadmincom" id="iadmincom" rows="5" cols="100">${dto.iadmincom }</textarea>
						</div>
						<br>
						<div>
							<a>상태 : </a>
							<select id="istate" name='istate' >
							 <option value='답변완료' selected="selected">답변완료</option>
							 <option value='진행중'>진행중</option>
							</select>
						</div>
						<br>
						<div>
							<input type="button" value="Home" onclick="location='${pageContext.request.contextPath}/web/'">
							<input type="submit" value="답변" id="btn1" />
						</div>
					</form>
				</fieldset>
        </div>
</article>