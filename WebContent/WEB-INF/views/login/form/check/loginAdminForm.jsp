<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<article>
	<header>
	<h1>Adminstrator Login</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form action="loginAProcess" method="post" id="loginAdminInfo"
			onsubmit="return checkValue()">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="aid">ID</label> <input type="text" class="form-control"
					id="aid" placeholder="아이디 입력" name="aid" maxlength="24"
					required="required" pattern=".{2,24}">
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input type="password"
					class="form-control" id="apwd" placeholder="******" name="apwd"
					maxlength="10" required="required" pattern=".{1,10}">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">로그인</button>
				&nbsp;				
			</div>
		</form>
	</div>
</article>

<script>

</script>