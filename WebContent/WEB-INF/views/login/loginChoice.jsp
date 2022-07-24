<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<article>
	<header>
	<h1 class="title"> </h1>
	</header>
	<div class="col">
<nav style="background-color: #ffffff">
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
    <button class="nav-link active" id="memberlogin" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-member" aria-selected="true">일반 회원 로그인</button>
    <button class="nav-link" id="adminlogin" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-admin" aria-selected="false">관리자 로그인</button>
  </div>
</nav>


<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active memberform" id="nav-member" 
  role="tabpanel" aria-labelledby="nav-home-tab">
  <script type="text/javascript">
  $.ajax({
		url:"loginForm",
		success:function(data){
			document.querySelector('.memberform').innerHTML=data;
		}
	});
  </script>
</div>

</div>
</div>
</article>


<script>
$('#memberlogin').click(function() {
// 	document.querySelector('.title').innerHTML="Member Form";
	$.ajax({
		url:"loginForm",
		success:function(data){
			document.querySelector('.memberform').innerHTML=data;
		}
	});
});
$('#adminlogin').click(function() {
// 	document.querySelector('.title').innerHTML="Adminstrator Form";
	$.ajax({
		url:"loginAdminForm",
		success:function(data){
			document.querySelector('.memberform').innerHTML=data;
		}
	});
});


function checking(){
	  let param = $('#mid').val();
	  console.log(param);
		$.ajax({
			url:"chk/idchk?mid="+param,
			success:function(data){
				if(data==1) {
 		        	document.querySelector('.checkmsg').innerHTML= "이미 사용중인 아이디 입니다!";
  		        	document.querySelector('.checkmsg').style.color="red";
			    } else{
			    	if(param==""){
			    		document.querySelector('.checkmsg').innerHTML= "아이디를 입력해주세요";
	  		        	document.querySelector('.checkmsg').style.color="black";
			    	} else {
	 			        document.querySelector('.checkmsg').innerHTML= "사용 가능한 아이디 입니다!";
	 			       	document.querySelector('.checkmsg').style.color="green";
			    	}
			    }
				
			}
		});
  };
</script>