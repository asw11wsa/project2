<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<nav class="navbar navbar-expand-sm mybgColor" >
     <div class="container-fluid" >
        <ul class="navbar-nav" >
            <li class="nav-item"><a href="${mycontext}/main" class="nav-link active" >Home</a></li>
            <li class="nav-item"><a href="${mycontext}/upload/list?cPage=1" class="nav-link">Board</a></li>
            <!--<li class="nav-item"><a href="${pageContext.request.contextPath }/upload/upform" class="nav-link">upDemo</a></li> -->
            <li class="nav-item"><a href="#" class="nav-link">Profile</a></li>
            <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
        </ul>
        <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search" name="searchv" id="searchv">
        <button class="btn btn-primary" type="button">Search</button>
        </form>
      </div>
    </nav>