<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="my-3">
	  <div class="admin-toast-header">
	    <h3 class="me-auto mb-3">문의 채팅</h3>
	  </div>
	  <div class="admin-toast-body overflow-auto" id="adminchatbody" style="height:40vh">
	  	<c:forEach var="list" items="${list }">
	  		<c:if test="${list.sender != 'admin' }">
	  			<div class="text-start bg-light rounded p-2 fs-6 border mb-1">
			  		<div class="fw-blod d-flex">
			  			<div class="d-inline-block" style="width:40px;">
			  				<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border inline-block"/>
			  			</div>
			  			<span class="d-inline-block ps-1" style="width:calc(100% - 40px);word-break:keep-all;">${list.msg }</span>
			  		</div>
			  	</div>
	  		</c:if>
	  		<c:if test="${list.sender == 'admin' }">
	  			<div class="text-end p-2 fs-6 mb-1">
			  		<div class="fw-blod d-flex">
			  			<span class="me-2 d-inline-block" style="width:calc(100% - 40px);word-break:keep-all;">${list.msg}</span>
			  			<div class="d-inline-block" style="width:40px;">
			  				<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="100%" class="rounded-pill me-2 border"/>
			  			</div>
			  		</div>
			  	</div>
	  		</c:if>
	  	</c:forEach>
	  </div>
	  <div class="input-group mb-3 mt-2 p-2">
		  <input type="text" class="form-control" id="adminchatmsg" placeholder="메세지를 입력해 주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
		  <button class="btn btn-outline-primary" type="button" id="adminsendchat">보내기</button>
		</div>
	</div>
	
<script>
$(function(){
	$(".admin-toast-body").animate({ scrollTop: $(".admin-toast-body").height() }, 1000);
	$("#adminsendchat").click(function(){
		var msg = $("#adminchatmsg").val();
		var html =`<div class="text-end p-2 fs-6 mb-1"><div class="fw-blod d-flex">`;
			html += `<span class="me-2 d-inline-block" style="width:calc(100% - 40px);word-break:keep-all;">\${msg}</span>`;
			html += `<div class="d-inline-block" style="width:40px;">`;
			html +=`<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="100%" class="rounded-pill me-2 border"/>`;
			html +=`</div></div></div>`;
		$.ajax({
			url : `${pageContext.request.contextPath }/web/contact/admininsert?msg=\${msg}&id=${id}`,
			success : function(res) {
				console.log("채팅 저장 완료");
			},
		});
		$("#adminchatbody").append(html);
		$("#adminchatmsg").val("");
		$(".admin-toast-body").animate({ scrollTop: $(".admin-toast-body").height() }, 1000);
	});
})
</script>