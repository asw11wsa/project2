<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<article>
<div class="container pt-4">
<header>
<h1>회원가입</h1>
</header>
<ul class="list-unstyled">일반 회원 가입 페이지<li class="border-top my-3"></li></ul>
</div>

<div class="container">
<form action="memberadd" method="post" class="row g-3 needs-validation" novalidate>
  <div class="col-md-6">
    <label for="mid" class="form-label">아이디</label>
    <input type="text" class="form-control checkid" id="mid" name="mid" placeholder="아이디를 입력하세요" onblur="checking()" required>
    <div class="checkmsg"></div>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback blockmsg">
    </div>
  </div>
 
  <div class="col-md-12">
    <label for="mpwd" class="form-label">비밀번호</label>
    <input type="password" class="form-control" id="mpwd" name="mpwd" placeholder="*******" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
    	비밀번호를 입력하세요.   
    </div>
  </div>
  <div class="col-md-4">
    <label for="mname" class="form-label">이름</label>
    <input type="text" class="form-control" id="mname" name="mname" placeholder="이름을 입력하세요" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
       	이름을 입력하세요.
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubun1" class="form-label">주민번호 앞자리</label>
    <input type="text" class="form-control"
    maxlength="6" pattern=".{6,6}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
     id="jubun1" name="jubun1" placeholder="" required>
    <div class="valid-feedback">
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubun2" class="form-label">주민번호 뒷자리</label>
    <input type="text" class="form-control" 
    maxlength="7" pattern=".{7,7}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
    id="jubun2" name="jubun2" placeholder="" required>
    <div class="valid-feedback">
    </div>
   </div>
   <div class="col-md-12">
    <label for="memail" class="form-label">이메일</label>
    <div class="input-group has-validation">
    <input type="text" class="form-control" id="email1" name="email1" placeholder="이메일을 입력하세요"
      aria-describedby="inputGroupPrepend" required>
      <span class="input-group-text" id="inputGroupPrepend">@</span>
      <input type="text" class="form-control" id="email2" name="email2" placeholder="gmail.com"
      aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
        	이메일을 입력하세요.
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <label for="mphone" class="form-label">전화번호</label>
    <input type="text" class="form-control" id="mphone" name="mphone" placeholder="000-0000-0000" required>
    <div class="invalid-feedback">
      	전화번호를 입력하세요.
    </div>
  </div>
  <div class="col-md-3">
    <label for="madr" class="form-label">주소</label>
    <select class="form-select" id="adr" name="adr" required>
      <option selected disabled value="">선택사항...</option>
      <option>서울</option>
      <option>경기</option>
      <option>부산</option>
      <option>대구</option>
      <option>인천</option>
      <option>광주</option>
      <option>대전</option>
      <option>울산</option>
      <option>세종</option>
      <option>강원</option>
      <option>충북</option>
      <option>충남</option>
      <option>전북</option>
      <option>전남</option>
      <option>경북</option>
      <option>경남</option>
      <option>제주</option>
    </select>
    <div class="invalid-feedback">
      	선택하세요.
    </div>
  </div>
  <div class="col-md-3">
    <label for="adr2" class="form-label">주소2</label>
    <input type="text" class="form-control" id="adr2" name="adr2" placeholder="상세주소입력" required>
    <div class="invalid-feedback">
      	입력하세요.
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

