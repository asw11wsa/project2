<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<article>
<div class="container pt-4">
<header>
<h1>ȸ������</h1>
</header>
<ul class="list-unstyled">������ ���� ������<li class="border-top my-3"></li></ul>
</div>

<div class="container">
<form action="adminadd" method="post" class="row g-3 needs-validation" novalidate>
  <div class="col-md-12">
    <label for="aid" class="form-label">���̵�</label>
    <input type="text" class="form-control checkid" id="aid" name="aid" placeholder="���̵� �Է��ϼ���" onblur="checking()" required>
    <div class="checkmsg"></div>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback blockmsg">
    </div>
  </div>
 
  <div class="col-md-12">
    <label for="apwd" class="form-label">��й�ȣ</label>
    <input type="password" class="form-control" id="apwd" name="apwd" placeholder="*******" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
    	��й�ȣ�� �Է��ϼ���.   
    </div>
  </div>
  
  <div class="col-md-6">
    <label for="agrade" class="form-label">������ ���</label>
    <select class="form-select" id="agrade" name="agrade" required>
      <option selected disabled value="">������ ����� �����ϼ���..</option>
      <option>A������</option>
      <option>B������</option>
      <option>C������</option>
      <option>D������</option>
    </select>
    <div class="invalid-feedback">
      	�����ϼ���.
    </div>
  </div>
  
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="checkbtn" name="checkbtn" required>
      <label class="form-check-label" for="invalidCheck">
        	�����մϴ�.
      </label>
      <div class="invalid-feedback">
        	üũ��ư�� �����ּ���.
      </div>
    </div>
  </div>
  <div class="col-12">
    <button class="btn btn-primary" type="submit">ȸ������ �Ϸ�</button>
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
 		        	document.querySelector('.checkmsg').innerHTML= "�̹� ������� ���̵� �Դϴ�!";
  		        	document.querySelector('.checkmsg').style.color="red";
			    } else{
			    	if(param==""){
			    		document.querySelector('.checkmsg').innerHTML= "���̵� �Է����ּ���";
	  		        	document.querySelector('.checkmsg').style.color="black";
			    	} else {
	 			        document.querySelector('.checkmsg').innerHTML= "��� ������ ���̵� �Դϴ�!";
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

