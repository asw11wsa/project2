<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="my-3 w-25 text-right d-flex justify-content-center">
		<form class="d-flex justify-content-center" role="search" method="get">
		<div class="input-group">
			<select class="form-select" name="searchkey">
				<option value="searchtitle">제목</option>
				<option value="searchregion">지역</option>
			</select>
			<input type="hidden" name="startSearch" value="1">
	        <input class="form-control me-2" name="searchval" type="search" placeholder="Search" aria-label="Search">
        </div>
        <button class="btn btn-outline-success" type="submit" style="width: 70px">검색</button>
      </form>
    </div>
	<div class="row">
	<c:forEach var="list" items="${list }">
		<div class="card col-sm-6 col-log-4 mx-auto my-2" style="width: 18rem;">
		  <img src="${pageContext.request.contextPath }/resources/imgfile/${list.imga}" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">${list.title }</h5>
		    <p class="card-text">${list.content}</p>
		    <a href="${pageContext.request.contextPath }/web/tourlist/detail?num=${list.num}" class="btn btn-primary">상세보기</a>
		  </div>
		</div>
	</c:forEach>
	</div>
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center mt-4">
	<c:choose>
	<c:when test="${startPage < 6}">
	<li class="page-item disabled">
	      <a class="page-link" href="#" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	</c:when>
	<c:otherwise>
	<li class="page-item">
	      <a class="page-link" href="${pageContext.request.contextPath}/web/tourlist/list?cPage=${nowPage-pagePerBlock}&searchkey=${searchkey}&searchval=${searchval}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	</c:otherwise>
	</c:choose>
	
	<c:forEach varStatus="i" begin="${startPage}" end="${endPage }" step="1" >
		<c:choose>
		<c:when test="${i.index == nowPage}">
		<li class="page-item active"><a class="page-link" href="#">${i.index}</a></li>
		</c:when>
		<c:otherwise>
		<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/web/tourlist/list?cPage=${i.index}&searchkey=${searchkey}&searchval=${searchval}">${i.index}</a></li>
		</c:otherwise>
		</c:choose> 
	</c:forEach>
	<c:choose>
		<c:when test="${endPage >= totalPage }">
		<li class="page-item disabled">
	      <a class="page-link" href="#" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</c:when>
		<c:when test="${totalPage > (nowPage+pagePerBlock)}">
		<li class="page-item">
	      <a class="page-link" href="${pageContext.request.contextPath}/web/tourlist/list?cPage=${nowPage+pagePerBlock }&searchkey=${searchkey}&searchval=${searchval}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</c:when>
		<c:otherwise>
		<li class="page-item">
	      <a class="page-link" href="${pageContext.request.contextPath}/web/tourlist/list?cPage=${totalPage }&searchkey=${searchkey}&searchval=${searchval}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</c:otherwise>
	</c:choose>
  </ul>
</nav>
