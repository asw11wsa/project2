<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="my-3 w-25 text-right d-flex justify-content-center">
	<form class="d-flex justify-content-center" role="search" method="get">
	<div class="input-group">
		<select class="form-select" name="searchkey">
			<option value="searchtitle">����</option>
			<option value="searchregion">����</option>
		</select>
		<input type="hidden" name="startSearch" value="1">
        <input class="form-control me-2" name="searchval" type="search" placeholder="Search" aria-label="Search">
       </div>
       <button class="btn btn-outline-success" type="submit" style="width: 70px">�˻�</button>
     </form>
</div>
<table class="table table-striped p-5">
  <thead>
    <tr>
      <th scope="col">��ȣ</th>
      <th scope="col">ä�ù�</th>
      <th scope="col">�˸�</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="list" items="${list }">
		<c:choose>
			<c:when test="${list.statuscnt + 0 == 0 }">
				<tr>
			      <th scope="row">${list.r_num }</th>
			      <td><a href="${pageContext.request.contextPath}/web/admin/contact/detail?id=${list.sender}">${list.sender}���� ���� ����</a></td>
			      <td>${list.statuscnt }</td>
			    </tr>
			</c:when>
			<c:otherwise>
				<tr>
			      <th scope="row">${list.r_num }</th>
			      <td><a href="${pageContext.request.contextPath}/web/admin/contact/detail?id=${list.sender}">${list.sender}���� ���� ����</a></td>
			      <td class="text-danger">${list.statuscnt }</td>
			    </tr>
			</c:otherwise>
		</c:choose>
	</c:forEach>
  </tbody>
</table>

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
	      <a class="page-link" href="${pageContext.request.contextPath}/web/admin/contact/list?cPage=${nowPage-pagePerBlock}&searchkey=${searchkey}&searchval=${searchval}" aria-label="Previous">
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
		<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/web/admin/contact/list?cPage=${i.index}&searchkey=${searchkey}&searchval=${searchval}">${i.index}</a></li>
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
	      <a class="page-link" href="${pageContext.request.contextPath}/web/admin/contact/list?cPage=${nowPage+pagePerBlock }&searchkey=${searchkey}&searchval=${searchval}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</c:when>
		<c:otherwise>
		<li class="page-item">
	      <a class="page-link" href="${pageContext.request.contextPath}/web/admin/contact/list?cPage=${totalPage }&searchkey=${searchkey}&searchval=${searchval}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	      </a>
	    </li>
		</c:otherwise>
	</c:choose>
  </ul>
</nav>