<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<div class="d-flex flex-row-reverse mybgColor">
  <div class="p-2 bg-info"><a href="#" class="nav-link text-white" id="item1">Flex item 1</a></div>
  
  <c:choose>
  	<c:when test="${sessionScope.sessionID == null }">
  		<div class="p-2 bg-warning"><a href="${mycontext}/login/loginForm" class="nav-link text-white" id="item2">로그인</a></div>
  		<div class="p-2 bg-primary"><a href="${mycontext}/member/memberForm" class="nav-link text-white" id="item3">회원가입</a></div>
  	</c:when>
  	<c:when test="${sessionScope.sessionID != null }">
  		<div class="p-2 bg-warning"><a href="${mycontext}/login/logout" class="nav-link text-white" id="item2">로그아웃</a></div>
  		<div class="p-2 bg-primary"><a href="${mycontext}/member/memberForm" class="nav-link text-white" id="item3">${sessionScope.sessionName }</a></div>
  	</c:when>
  </c:choose>
  
  
</div>