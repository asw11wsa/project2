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
    <a class="navbar-brand fs-3 fw-bold" href="${mycontext}/web/">SeMiD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="${mycontext}/web/">홈</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${mycontext}/web/tourlist/list">페키지 상품 목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${mycontext}/web/board/list">게시판</a>
        </li>
      </ul>
      <ul class="navbar-nav mb-2 mb-lg-0 d-flex" role="search">
      	<c:if test="${sessionScope.sessionID == null }">
	      	<li class="nav-item">
	          <a class="nav-link" href="${mycontext}/web/loginChoice">로그인</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${mycontext}/web/join/joinChoice">회원가입</a>
	        </li>
        </c:if>
        <c:if test="${sessionScope.sessionID != null }">
        	<c:if test="${sessionScope.sessionAdmin == 1 }">
        		<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ${sessionScope.sessionID }
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="${mycontext}/web/adminmember/adminMember">관리자 페이지</a></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/tourlist/form">페키지 등록</a></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/admin/contact/list">관리자 채팅</a></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/adminqna/adminQnaList">Qna 게시판 페이지</a></li>
                    <li><a class="dropdown-item" href="${mycontext}/web/adminstatistics/statistics">통계 페이지</a></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/logout">로그아웃</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/booking/list">나의 예약목록</a></li>
		          </ul>
		        </li>
        	</c:if>
        	<c:if test="${sessionScope.sessionAdmin != 1 }">
        		<li class="nav-item me-2">
        		<c:if test="${msgcnt == 0 }">
		          <button type="button" class="btn btn-outline-primary nav-item" id="liveToastBtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-text-fill" viewBox="0 0 16 16">
					  <path d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM3.5 3h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1z"/>
					</svg>
					<span class="ps-2 fw-bold" id="msgcnt">${msgcnt}</span>
					</button>
				</c:if>
				<c:if test="${msgcnt+0 >= 1 }">
		          <button type="button" class="btn btn-outline-danger nav-item" id="liveToastBtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-text-fill" viewBox="0 0 16 16">
					  <path d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM3.5 3h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1z"/>
					</svg>
					<span class="ps-2 fw-bold" id="msgcnt">${msgcnt}</span>
					</button>
				</c:if>
		        </li>
        		<li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            ${sessionScope.sessionID }
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="${mycontext}/web/member/mypageForm?mnum=${sessionScope.sessionMnum}">마이페이지</a></li>
		            <li><a class="dropdown-item" href="${mycontext}/web/logout">로그아웃</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><a class="dropdown-item" href="#">나의 예약목록</a></li>
		          </ul>
		        </li>
        	</c:if>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
