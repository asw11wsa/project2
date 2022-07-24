<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<article>
	<header>
	<h1 class="title"> </h1>
	</header>
	<div class="container">
		<form action="loginChoice" method="post" id="loginCho"		
			onsubmit="return checkValue()">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">			
			<div class="form-group" style="text-align: CENTER; margin: 80px;">				
				<a href="${mycontext}/web/join/joinform">
				<button type="button" class="btn btn-primary" style="width: 200px; height: 100px;">				
				User<br>회원가입</button>&nbsp;</a>
				<button type="button" onclick="chkcode()" class="btn btn-primary" style="width: 200px; height: 100px;">				
				Administrator<br>회원가입</button>
			</div>		
		</form>	
	</div>
</article>

<script>
function chkcode(){
	var text;
	var view=prompt("관리자 인증 코드를 입력하세요.");
	switch(view){
		case "semid":
			location = "${pageContext.request.contextPath }/web/join/joinAdminform";
			break;
		default:
			alert("인증 실패");
			location = "${pageContext.request.contextPath }/web/join/joinChoice";
		break;
	}
}
</script>



