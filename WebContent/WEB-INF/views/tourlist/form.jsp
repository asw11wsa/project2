<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article>
	<header>
		<h1>�����Ʈ ���</h1>
	</header>
	<ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div>
		<%-- memberForm �� �ڸ� --%>
		<form action="insert" method="post">
		<!-- ����� �����Ǹ� �޾ƿ� ������ �ʴ� �Ӽ����� reip�� ���� -->
		<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="id">���̵�</label>
				<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
				<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
				<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
				<input type="text" class="form-control" id="id"
					placeholder="���̵� �Է�(4-10)" name="id" maxlength="10"
					required="required" pattern=".{4,10}"><button type="button" class="btn btn-primary" id="btn1">�ߺ�üũ</button>
				<div id="target"></div>
			</div>
			<div class="form-group">
				<label for="pwd">��й�ȣ</label>
				<!--  �������� �����͸� �Է��ϰ� �ϰ��� �Ҷ� textarea �±׸� ����Ѵ�. -->
				<!--  textarea �ȿ� �ִ� ��� ���ڴ� �״�� ��Ÿ����. ���鹮��, tag, enter -->
				<input type="password" class="form-control" id="pwd" name="pwd"
				required="required"></input>
			</div>
			<div class="form-group">
				<label for="name">�̸�</label> <input type="text"
					class="form-control" id="name" placeholder="�̸��Է��ض�"
					name="name">
			</div>
			<div class="form-group">
				<label for="gender">����</label> 
					<input class="form-check-input" type="radio" value="����" name="gender" id="gender1"> 
					<label class="form-check-label" for="gender1">���� </label> 
					
					<input class="form-check-input" type="radio" value="����" name="gender" id="gender2"> 
					<label class="form-check-label" for="gender2">���� </label>
			</div>
			<div class="form-group">
				<label for="age">����</label> <input type="text"
					class="form-control" id="age" placeholder="���� �Է�"
					name="age" required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>
			</div>
			
		</form>
	</div>
</article>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#btn1').click(function(){
			let param = $('#id').val();
			$.ajax({
				url:"idcheck?id="+param,
				success:function(data){
					console.log(data);
					if(data==1){
						$('#target').css('background-color','red').html('������� ���̵���');
					}else{
						$('#target').css('background-color','blue').html('��밡���ϴ�');
					}
				}
			})
		})
	})
</script>