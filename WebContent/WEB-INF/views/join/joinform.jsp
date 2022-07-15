<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<article>
<div class="container pt-4">
<header>
<h1>ȸ������</h1>
</header>
<ul class="list-unstyled">�Ϲ� ȸ�� ���� ������<li class="border-top my-3"></li></ul>
</div>

<div class="container">
<form action="memberadd" method="post" class="row g-3 needs-validation" novalidate>
  <div class="col-md-6">
    <label for="mid" class="form-label">���̵�</label>
    <input type="text" class="form-control checkid" id="mid" name="mid" placeholder="���̵� �Է��ϼ���" onblur="checking()" required>
    <div class="checkmsg"></div>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback blockmsg">
    </div>
  </div>
 
  <div class="col-md-12">
    <label for="mpwd" class="form-label">��й�ȣ</label>
    <input type="password" class="form-control" id="mpwd" name="mpwd" placeholder="*******" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
    	��й�ȣ�� �Է��ϼ���.   
    </div>
  </div>
  <div class="col-md-4">
    <label for="mname" class="form-label">�̸�</label>
    <input type="text" class="form-control" id="mname" name="mname" placeholder="�̸��� �Է��ϼ���" required>
    <div class="valid-feedback">
    </div>
    <div class="invalid-feedback">
       	�̸��� �Է��ϼ���.
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubun1" class="form-label">�ֹι�ȣ ���ڸ�</label>
    <input type="text" class="form-control"
    maxlength="6" pattern=".{6,6}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
     id="jubun1" name="jubun1" placeholder="" required>
    <div class="valid-feedback">
    </div>
  </div>
  <div class="col-md-4">
    <label for="jubun2" class="form-label">�ֹι�ȣ ���ڸ�</label>
    <input type="text" class="form-control" 
    maxlength="7" pattern=".{7,7}" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
    id="jubun2" name="jubun2" placeholder="" required>
    <div class="valid-feedback">
    </div>
   </div>
   <div class="col-md-12">
    <label for="memail" class="form-label">�̸���</label>
    <div class="input-group has-validation">
    <input type="text" class="form-control" id="email1" name="email1" placeholder="�̸����� �Է��ϼ���"
      aria-describedby="inputGroupPrepend" required>
      <span class="input-group-text" id="inputGroupPrepend">@</span>
      <input type="text" class="form-control" id="email2" name="email2" placeholder="gmail.com"
      aria-describedby="inputGroupPrepend" required>
      <div class="invalid-feedback">
        	�̸����� �Է��ϼ���.
      </div>
    </div>
  </div>
  <div class="col-md-6">
    <label for="mphone" class="form-label">��ȭ��ȣ</label>
    <input type="text" class="form-control" id="mphone" name="mphone" placeholder="000-0000-0000" required>
    <div class="invalid-feedback">
      	��ȭ��ȣ�� �Է��ϼ���.
    </div>
  </div>
  <div class="col-md-3">
    <label for="madr" class="form-label">�ּ�</label>
    <select class="form-select" id="adr" name="adr" required>
      <option selected disabled value="">���û���...</option>
      <option>����</option>
      <option>���</option>
      <option>�λ�</option>
      <option>�뱸</option>
      <option>��õ</option>
      <option>����</option>
      <option>����</option>
      <option>���</option>
      <option>����</option>
      <option>����</option>
      <option>���</option>
      <option>�泲</option>
      <option>����</option>
      <option>����</option>
      <option>���</option>
      <option>�泲</option>
      <option>����</option>
    </select>
    <div class="invalid-feedback">
      	�����ϼ���.
    </div>
  </div>
  <div class="col-md-3">
    <label for="adr2" class="form-label">�ּ�2</label>
    <input type="text" class="form-control" id="adr2" name="adr2" placeholder="���ּ��Է�" required>
    <div class="invalid-feedback">
      	�Է��ϼ���.
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
	  let param = $('#mid').val();
	  console.log(param);
		$.ajax({
			url:"chk/idchk?mid="+param,
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

