<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div>
		<form>
			<div class="form-group">
				<input type="hidden" id="bnum" name="bnum" value="${vo.bnum }">
				<label for="bsub">����</label> <input type="text" class="form-control"
					id="bsub" value="${vo.bsub }" readonly="readonly">
			</div>
			<div>
				<label for="category">ī�װ�</label> <input type="text"
					class="form-control" id="category" value="${vo.category }"
					readonly="readonly">
			</div>
			<div>
				<label for="cview">��ȸ��</label> <input type="text"
					class="form-control" id="cview" value="${vo.cview }"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="bcont">����</label> <input type="text"
					class="form-control" id="bcont" value="${vo.bcont }"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="bwriter">�ۼ���</label> <input type="text"
					class="form-control" id="bwriter" value="${vo.bwriter }"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="bdate">�ۼ���¥</label> <input type="text"
					class="form-control" id="bdate" value="${vo.bdate }"
					readonly="readonly">
			</div>
			<div class="form-group">
				<label for="bimg"></label> <img class="w-75"
					src="${pageContext.request.contextPath}/resources/imgfile/${vo.bimg }"
					id="bimg">
			</div>
			<button type="button" class="btn btn-default" id="dbtn1">����</button>
			<c:if test="${sessionScope.sessionID != vo.bwriter }">
				<a type="button"
					href="${pageContext.request.contextPath}/web/loginform">����</a>
			</c:if>
			<c:if test="${sessionScope.sessionID == vo.bwriter }">
				<a type="button" class="btn btn-default" id="dbtn2">����</a>
			</c:if>
			<c:if test="${sessionScope.sessionID != vo.bwriter }">
				<a type="button"
					href="${pageContext.request.contextPath}/web/loginform">����</a>
			</c:if>
			<c:if test="${sessionScope.sessionID == vo.bwriter }">
				<a type="button" class="btn btn-default" id="dbtn3">����</a>
			</c:if>
		</form>
	</div>
</article>