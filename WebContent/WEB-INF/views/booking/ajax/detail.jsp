<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>����׷��ȣ</th>
				<th>�����ȣ</th>
				<th>�����ȣ</th>
				<th>����/�Ƶ�</th>
				<th>�ֹε�Ϲ�ȣ</th>
				<th>�ڵ�����ȣ</th>
				<th>�̸���</th>
				<th>���� �̸� first</th>
				<th>���� �̸� last</th>
				<th>�����ھ��̵�</th>
				<th>�̸�</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="e" items="${list }">
				<tr>
					<td>${e.booknum }</td>
					<td>${e.num }</td>
					<td>${e.tournum }</td>
					<td>${e.personchk }</td>
					<td>${e.jumin }</td>
					<td>${e.phone }</td>
					<td>${e.email }</td>
					<td>${e.engfirst }</td>
					<td>${e.englast }</td>
					<td>${e.booker }</td>
					<td>${e.name }</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="11">
					<form action="deletebooking" method="post">
						<input type="hidden" id="delnum" name="delnum" value="${delnum }">
						<button type="submit" class="btn btn-secondary">���� ���</button>
					</form>
				</td>
			</tr>
		</tfoot>
	</table>