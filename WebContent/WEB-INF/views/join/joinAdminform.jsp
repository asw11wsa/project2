<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<article>
<div class="container pt-4">
<header>
<h1>회원가입</h1>
</header>
<ul class="list-unstyled">관리자 가입 페이지<li class="border-top my-3"></li></ul>
</div>

<div class="container">
<form action="adminadd" method="post" class="row g-3 needs-validation" novalidate>
  <div class="col-md-12">
    <label for="aid" class="form-label">아이디</label>
    <input type="text" class="form-control checkid" id="aid" name="aid" placeholder="아이디를 입력하세요" onblur="checking()" required>
    <div class="checkmsg"></div>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback blockmsg">
    </div>
  </div>
 
  <div class="col-md-12">
    <label for="apwd" class="form-label">비밀번호</label>
    <input type="password" class="form-control" id="apwd" name="apwd" placeholder="*******" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
    	비밀번호를 입력하세요.   
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="agrade" class="form-label">관리자 등급</label>
    <select class="form-select" id="agrade" name="agrade" required>
      <option selected disabled value="">관리자 등급을 선택하세요..</option>
      <option>A관리자</option>
      <option>B관리자</option>
      <option>C관리자</option>
      <option>D관리자</option>
    </select>
    <div class="invalid-feedback">
      	선택하세요.
    </div>
  </div>
  
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="checkbtn" name="checkbtn" required>
      <label class="form-check-label" for="invalidCheck">
        	동의합니다.
      </label>
      <div class="invalid-feedback">
        	체크버튼을 눌러주세요.
      </div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">회원가입 완료</button>
  </div>
</form>
</div>


</article>

<script>
//Example starter JavaScript for disabling form submissions if there are invalid fields

function checking(){
	  let param = $('#aid').val();
	  console.log(param);
		$.ajax({
			url:"chk/idchkAdmin?aid="+param,
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

(function () {
  'use strict'
  
  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  //Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
        form.classList.add('was-validated')
      }, false)
    })
})()
</script>

