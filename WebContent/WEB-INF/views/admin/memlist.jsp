<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
			table img{width: 80px;}
			
			/* paging */
			
			table tfoot ol.paging {
				list-style:none;
			}
			
			table tfoot ol.paging li {
				float:left;
				margin-right:8px;
				background-color: #42484a;
			}
			
			table tfoot ol.paging li a {
				display:block;
				padding:3px 7px;
				border:1px solid #ffffff;
				color:#ffffff;
				font-weight:bold;
			}
			
			table tfoot ol.paging li a:hover {
				background:#00B3DC;
				color:white;
				font-weight:bold;
			}
			
			.disable {
				padding:3px 7px;
				border:1px solid silver;
				color:white;
			}
			.now {
				padding:3px 7px;
				background:#ff4aa5;
				color:white;
				font-weight:bold;
			}
		</style>

    <article >
        <div class="container">
			<header>
				<h1>게시판 리스트</h1>
			</header>
			<%-- 리펙토링 해야함 --%>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>번호</th>
						<th>ID</th>
						<th>이름</th>
						<th>가입날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="e" items="${list }">
						<tr>
							<td class="text-center">${e.mnum }</td>
							<td class="align-middle text-center"><a href="detail?mnum=${e.mnum}">${e.mid }</a></td>
							<td class="text-center">${e.mname }</td>
							<td class="align-middle">${e.mdate }</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4">
							<ol class="paging">
								<c:choose>
									<c:when test="${startPage < 6 }">
										<li class="disable">이전으로</li>
									</c:when>
									<c:otherwise>
										<li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${nowPage-pagePerBlock }">이전으로</a></li>
									</c:otherwise>
								</c:choose>
								<!-- i.index 사용해서 페이징의 인덱스가 유지 -->
								<c:forEach varStatus="i" begin="${startPage }" end="${endPage }" step="1">
									<c:choose>
										<c:when test="${i.index == nowPage }">
											<li class="now">${i.index }</li>
										</c:when>
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${i.index }">${i.index }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${endPage >= totalPage }">
										<li class="disable">다음으로</li>
									</c:when>
									<c:when test="${totalPage > (nowPage+pagePerBlock) }">
										<li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${nowPage+pagePerBlock }">다음으로</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${totalPage }">다음으로</a></li>
									</c:otherwise>
								</c:choose>
							</ol>
						</td>
					</tr>
					<tr>
						<td>
						<div class="d-flex">
							<form action="adminMember" method="get">
								<input type="hidden" name="searchkey" value="id">
								<input class="form-control me-2" type="search" placeholder="Search" name="searchval" id="searchval">
								<button class="btn btn-primary" type="submit">Search</button>
							</form>
						</div>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
    </article>