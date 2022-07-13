<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<article>
	<header>
		<h1>투어리스트 등록</h1>
	</header>
	<ul class="list-unstyled"><li class="border-top my-3"></li></ul>
	<div>
		<%-- memberForm 들어갈 자리 --%>
		<form action="insert" method="post">
		<!-- 사용자 아이피를 받아와 보이지 않는 속성으로 reip에 담음 -->
		<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="id">아이디</label>
				<!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
				<!-- required 속성을 설정하면 필수입력 사항이된다. -->
				<!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
				<input type="text" class="form-control" id="id"
					placeholder="아이디 입력(4-10)" name="id" maxlength="10"
					required="required" pattern=".{4,10}"><button type="button" class="btn btn-primary" id="btn1">중복체크</button>
				<div id="target"></div>
			</div>
			<div class="form-group">
				<label for="pwd">비밀번호</label>
				<!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
				<!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
				<input type="password" class="form-control" id="pwd" name="pwd"
				required="required"></input>
			</div>
			<div class="form-group">
				<label for="name">이름</label> <input type="text"
					class="form-control" id="name" placeholder="이름입력해라"
					name="name">
			</div>
			<div class="form-group">
				<label for="gender">성별</label> 
					<input class="form-check-input" type="radio" value="남자" name="gender" id="gender1"> 
					<label class="form-check-label" for="gender1">남자 </label> 
					
					<input class="form-check-input" type="radio" value="여자" name="gender" id="gender2"> 
					<label class="form-check-label" for="gender2">여자 </label>
			</div>
			<div class="form-group">
				<label for="age">나이</label> <input type="text"
					class="form-control" id="age" placeholder="나이 입력"
					name="age" required="required">
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">등록</button>
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
						$('#target').css('background-color','red').html('사용중인 아이디임');
					}else{
						$('#target').css('background-color','blue').html('사용가능하다');
					}
				}
			})
		})
	})
</script>