<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="max-width:800px;">
	<header>
				<h1>�Խ��� ī�װ� �� ��ȸ�� ���</h1>
			</header>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">����</th>
				<th scope="col">�ؿ�</th>
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