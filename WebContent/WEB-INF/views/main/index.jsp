<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	this is index page
	<a href="${pageContext.request.contextPath }/web/tourlist/list">tourlist</a>
<button type="button" class="btn btn-primary" id="liveToastBtn">Show live toast</button>

<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" role="alert" aria-live="assertive" aria-atomic="true" class="toast" data-bs-autohide="false">
	  <div class="toast-header">
	    <img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded me-2" alt="...">
	    <strong class="me-auto">문의 채팅</strong>
	    <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close" id="chatBtn"></button>
	  </div>
	  <div class="toast-body overflow-auto" id="chatbody" style="height:40vh">
	  	<div class="text-start bg-light rounded p-2 fs-6">
	  		<div class="fw-blod">
	  			<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border inline-block"/><span class="">하이</span>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-start bg-light rounded p-2 fs-6">
	  		<div class="fw-blod">
	  			<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/><span class="">하이</span>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-start bg-light rounded p-2 fs-6">
	  		<div class="fw-blod">
	  			<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/><span class="">하이</span>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-start bg-light rounded p-2 fs-6">
	  		<div class="fw-blod">
	  			<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/><span class="">하이</span>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-start bg-light rounded p-2 fs-6">
	  		<div class="fw-blod">
	  			<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/><span class="">하이</span>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  	<div class="text-end p-2 fs-6" id="endchat">
	  		<div class="fw-blod">
	  			<span class="me-2">안녕하세요~~</span><img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>
	  		</div>
	  	</div>
	  </div>
	  <div class="input-group mb-3 mt-2 p-2">
		  <input type="text" class="form-control" id="chatmsg" placeholder="메세지를 입력해 주세요" aria-label="Recipient's username" aria-describedby="button-addon2">
		  <button class="btn btn-outline-primary" type="button" id="sendchat">보내기</button>
		</div>
	</div>
</div>

<script>
$(function(){
	const toastTrigger = document.getElementById('liveToastBtn')
	const toastLiveExample = document.getElementById('liveToast')
	if (toastTrigger) {
	  toastTrigger.addEventListener('click', () => {
	    const toast = new bootstrap.Toast(toastLiveExample)

	    toast.show()
	  })
	}
	$(".toast-body").animate({ scrollTop: $(".toast-body").height() }, 1000);
	$("#sendchat").click(function(){
		var msg = $("#chatmsg").val();
		var html =`<div class="text-start bg-light rounded p-2 fs-6"><div class="fw-blod">`;
			html += `<img src="${pageContext.request.contextPath }/resources/image/logo.png" width="40px" class="rounded-pill me-2 border"/>`;
			html += `<span class="">\${msg}</span>`;
		
		html +=`</div></div>`;
		$("#chatbody").append(html);
		$(".toast-body").animate({ scrollTop: $(".toast-body").height() }, 1000);
	});
})
</script>