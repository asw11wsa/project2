<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	this is index page
	<a href="${pageContext.request.contextPath }/web/tourlist/list">tourlist</a>

<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" role="alert" aria-live="assertive" aria-atomic="true" class="toast" data-bs-autohide="false">
	  <div class="toast-header">
	    <img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded me-2" alt="...">
	    <strong class="me-auto">문의 채팅</strong>
	    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close" id="chatBtn"></button>
	  </div>
	  <div class="toast-body overflow-auto" id="chatbody" style="height:40vh">
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
		  <input type="text" class="form-control" id="chatmsg" placeholder="메세지를 입력해 주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
		  <button class="btn btn-outline-primary" type="button" id="sendchat">보내기</button>
		</div>
	</div>
</div>

<script>
$(function(){
	const toastTrigger = document.getElementById('liveToastBtn');
	const toastLiveExample = document.getElementById('liveToast');
	if (toastTrigger) {
	  toastTrigger.addEventListener('click', function(){
	    const toast = new bootstrap.Toast(toastLiveExample);
	    toast.show();
	    $.ajax({
			url : `${pageContext.request.contextPath }/web/contact/updateuser?id=${sessionScope.sessionID}`,
			dataType : "json",		
			success : function(res) {
				$("#msgcnt").text(res);
				$("#liveToastBtn").removeClass("btn-outline-danger").addClass("btn-outline-primary");
			},
		});
	  })
	}
	$(".toast-body").animate({ scrollTop: $(".toast-body").height() }, 1000);
	$("#sendchat").click(function(){
		var msg = $("#chatmsg").val();
		var html =`<div class="text-start bg-light rounded p-2 fs-6"><div class="fw-blod">`;
			html += `<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>`;
			html += `<span class="">\${msg}</span>`;
		html +=`</div></div>`;
		$.ajax({
			url : '${pageContext.request.contextPath }/web/contact/insert?msg=' + msg,
			success : function(res) {
				console.log("채팅 저장 완료")
			},
		});
		$("#chatbody").append(html);
		$("#chatmsg").val("");
		$(".toast-body").animate({ scrollTop: $(".toast-body").height() }, 1000);
	});
})
</script>