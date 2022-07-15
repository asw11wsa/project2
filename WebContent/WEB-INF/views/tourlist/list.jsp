<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="my-3 w-25 text-right d-flex flex-row-reverse">
		<form class="d-flex" role="search" method="get">
		<div class="input-group">
			<select class="form-select" name="searchname">
				<option value="searchtitle">제목</option>
				<option value="searchregion">지역</option>
			</select>
	        <input class="form-control me-2" name="searchval" type="search" placeholder="Search" aria-label="Search">
        </div>
        <button class="btn btn-outline-success" type="submit">검색</button>
      </form>
    </div>
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
