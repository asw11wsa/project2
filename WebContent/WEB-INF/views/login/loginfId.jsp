<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>ID 찾기</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form action="findIdProcess" method="post" id="findIdInfo">
			<div class="form-group">
				<label for="mname">이름</label> <input type="text" class="form-control"
					id="mname" placeholder="이름입력" name="mname" maxlength="24"
					required="required">
			</div>
			<div class="form-group">
				<label for="memailId">이메일 주소</label> <input type="text"
					class="form-control" id="memailId" placeholder="이메일을 입력해주세요" name="memailId"
					required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" onclick="infoId()" class="btn btn-primary">Find ID</button>
			</div>
		</form>
	</div>
	
	<header>
		<h1>PASSWORD 찾기</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form>
			<div class="form-group">
				<label for="mname">이름</label> <input type="text" class="form-control"
					id="mname" placeholder="이름입력" name="mname" maxlength="24"
					required="required">
			</div>
			<div class="form-group">
				<label for="mid">아이디</label> <input type="text"
					class="form-control" id="mid" placeholder="아이디를 입력하세요" name="mid"
					required="required">
			</div>
			<div class="form-group">
				<label for="memailPwd">이메일 주소</label> <input type="text"
					class="form-control" id="memailPwd" placeholder="이메일을 입력해주세요" name="memailPwd"
					required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" onclick="infoPwd()" class="btn btn-primary">Find Password</button>
			</div>
		</form>
	</div>
</article>

<script>
function infoId() {  
	let param = $('#memailId').val();
	   console.log(param);
	   $.ajax({
	      url:"chk/idchk?memail="+param,
	      success:function(data){
	         alert(아이디는 "+data+" 입니다.");
	      }
	   });
};
function infoPwd() { 
	let param = $('#memailPwd').val();
	console.log(param);
	$.ajax({
		url:"chk/pwdchk?memail="+param,
		success:function(data){
			alert(비밀번호는"+data+" 입니다.");
		}
	});
};
</script>


