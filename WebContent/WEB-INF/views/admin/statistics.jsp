<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="max-width:800px;">
	<header>
				<h1>게시판 카테고리 별 조회수 통계</h1>
			</header>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">국내</th>
				<th scope="col">해외</th>
			</tr>
		</thead>
		<tbody>
				<tr>
				<c:forEach items="${list }" var="e">
					<td>${e.cview }</td>
				</c:forEach>
				</tr>
		</tbody>
	</table>
</div>