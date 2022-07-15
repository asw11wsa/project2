<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<article>
		<header>
            <h1>Member Detail</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardForm 들어 갈 자리 --%>
			<fieldset>
					<legend>회원 상세보기</legend>
					<%-- action은 UploadDemoController @PostMapping(value = "/이곳과 동일해야한다") --%>
					<form method="post" action="update" id="upform">
						<input type="hidden" name="mnum" id="mnum" value="${dto.mnum }">
						<p>
							<label>I D</label>
							<input type="text" name="mid" id="mid"  value="${dto.mid }" readonly="readonly"/>
						</p>
						<p>
							<label>PWD</label>
							<input type="text" name="mpwd" id="mpwd" value="${dto.mpwd }"/>
						</p>
						<p>
							<label>이 름</label>
							<input type="text" name="mname" id="mname" value="${dto.mname }" readonly="readonly"/>
						</p>
						<p>
							<label>주민번호</label>
							<input type="text" name="mjubun" id="mjubun" value="${dto.mjubun }" readonly="readonly"/>
						</p>
						<p>
							<label>email</label>
							<input type="text" name="memail" id="memail" value="${dto.memail }"/>
						</p>
						<p>
							<label>전화번호</label>
							<input type="text" name="mphone" id="mphone" value="${dto.mphone }"/>
						</p>
						<p>
							<label>주소</label>
							<input type="text" name="madr" id="madr" value="${dto.madr }"/>
						</p><p>
							<label>가입날짜</label>
							<input type="text" name="mdate" id="mdate" value="${dto.mdate }" readonly="readonly"/>
						</p>
						<p>
							<input type="button" value="Home" onclick="location='${pageContext.request.contextPath}/web/tourlist/list'">
							<input type="submit" value="수정" id="btn1" />
							<input type="button" value="Delete" onclick="location='${pageContext.request.contextPath}/web/adminmember/delete?mnum=${dto.mnum }'">
						</p>
					</form>
				</fieldset>
        </div>
</article>