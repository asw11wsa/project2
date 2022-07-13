<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<!--<div class="d-flex flex-row-reverse mybgColor">
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
  
  
</div> -->
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand fs-3 fw-bold" href="#">SeMiD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${mycontext}/web/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${mycontext}/web/tourlist/list">list</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${mycontext}/web/tourlist/form">form</a>
        </li>
      </ul>
      <ul class="navbar-nav mb-2 mb-lg-0 d-flex" role="search">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>