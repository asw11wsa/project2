<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<article>
	<header>
		<h1>ID ã��</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form action="findIdProcess" method="post" id="findIdInfo">
			<div class="form-group">
				<label for="mname">�̸�</label> <input type="text" class="form-control"
					id="mname" placeholder="�̸��Է�" name="mname" maxlength="24"
					required="required">
			</div>
			<div class="form-group">
				<label for="memailId">�̸��� �ּ�</label> <input type="text"
					class="form-control" id="memailId" placeholder="�̸����� �Է����ּ���" name="memailId"
					required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="button" onclick="infoId()" class="btn btn-primary">Find ID</button>
			</div>
		</form>
	</div>
	
	<header>
		<h1>PASSWORD ã��</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<form>
			<div class="form-group">
				<label for="mname">�̸�</label> <input type="text" class="form-control"
					id="mname" placeholder="�̸��Է�" name="mname" maxlength="24"
					required="required">
			</div>
			<div class="form-group">
				<label for="mid">���̵�</label> <input type="text"
					class="form-control" id="mid" placeholder="���̵� �Է��ϼ���" name="mid"
					required="required">
			</div>
			<div class="form-group">
				<label for="memailPwd">�̸��� �ּ�</label> <input type="text"
					class="form-control" id="memailPwd" placeholder="�̸����� �Է����ּ���" name="memailPwd"
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
	         alert(���̵�� "+data+" �Դϴ�.");
	      }
	   });
};
function infoPwd() { 
	let param = $('#memailPwd').val();
	console.log(param);
	$.ajax({
		url:"chk/pwdchk?memail="+param,
		success:function(data){
			alert(��й�ȣ��"+data+" �Դϴ�.");
		}
	});
};
</script>


