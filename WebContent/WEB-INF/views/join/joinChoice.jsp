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
				User<br>ȸ������</button>&nbsp;</a>
				<button type="button" onclick="chkcode()" class="btn btn-primary" style="width: 200px; height: 100px;">				
				Administrator<br>ȸ������</button>
			</div>		
		</form>	
	</div>
</article>

<script>
function chkcode(){
	var text;
	var view=prompt("������ ���� �ڵ带 �Է��ϼ���.");
	switch(view){
		case "semid":
			location = "${pageContext.request.contextPath }/web/join/joinAdminform";
			break;
		default:
			alert("���� ����");
			location = "${pageContext.request.contextPath }/web/join/joinChoice";
		break;
	}
}
</script>



