<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
	<c:forEach var="list" items="${list }">
		<div class="card col-sm-6 col-log-4 mx-auto my-2" style="width: 18rem;">
		  <img src="${pageContext.request.contextPath }/resources/imgfile/${list.imga}" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">${list.title }</h5>
		    <p class="card-text">${list.content}</p>
		    <a href="${pageContext.request.contextPath }/web/tourlist/detail?num=${list.num}" class="btn btn-primary">Go somewhere</a>
		  </div>
		</div>
	</c:forEach>
	</div>
</body>
</html>