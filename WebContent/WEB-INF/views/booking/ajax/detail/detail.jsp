<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>예약그룹번호</th>
				<th>예약번호</th>
				<th>여행번호</th>
				<th>성인/아동</th>
				<th>주민등록번호</th>
				<th>핸드폰번호</th>
				<th>이메일</th>
				<th>영어 이름 first</th>
				<th>영어 이름 last</th>
				<th>예약자아이디</th>
				<th>이름</th>
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
						<button type="submit" class="btn btn-secondary">예약 취소</button>
					</form>
				</td>
			</tr>
		</tfoot>
	</table>