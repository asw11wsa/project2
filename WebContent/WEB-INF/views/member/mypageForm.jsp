<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <article >
<div class="container">
<header>
    <h1>MyPage</h1>

	
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
</header>
 <form action="memberUp" method="post">
 <input type="hidden" name="mnum" id="mnum" value="${memdto.mnum }">



    <div class="form-group">
    <label for="mid">���̵� :</label>
	<input type="text"   class="form-control"  name="mid" id="mid" value="${memdto.mid }"   readonly="readonly">
    </div>
    <div class="form-group">
   <label for="mpwd">��й�ȣ :  </label>
   <input type="password"   class="form-control"  name="mpwd" id="mpwd" value="${memdto.mpwd }"  required="required" >
   </div>
     <div class="form-group">
    <label for="mname">�̸� :</label>
	<input type="text"   class="form-control"  name="mname" id="mname" value="${memdto.mname }"   readonly="readonly">
       </div>
     <div class="form-group">
    <label for="mjubun">�ֹε�Ϲ�ȣ : </label>
	<input type="text"   class="form-control"  name="mjubun" id="mjubun" value="${memdto.mjubun }"   readonly="readonly">
       </div>
   <div class="form-group">
   <label for="memail">email :  </label>
   <input type="text"   class="form-control"  name="memail" id="memail" value="${memdto.memail }"   required="required">
   </div>
   <div class="form-group">
   <label for="mphone">phone :  </label>
   <input type="text"   class="form-control"  name="mphone" id="mphone" value="${memdto.mphone }"   required="required">
   </div>
   <div class="form-group">
   <label for="madr">�ּ� :  </label>
   <input type="text"   class="form-control"  name="madr" id="madr" value="${memdto.madr }"    required="required">
   </div>
    <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="button" class="btn btn-primary" id="qwbtn">1:1����</button>
      <button type="button" class="btn btn-primary" id="qlbtn" 
      onclick="location='${pageContext.request.contextPath}/web/qna/qnaList?mnum=${memdto.mnum }'">���ǳ���Ȯ��</button>
  <!-- Button trigger modal update -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">����</button>
<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" 
aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">MyPage</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <p align="center">MyPage�� ������ �����Ͻðڽ��ϱ�?</p>
       <p align="center">'��'�� �����ø� ������ �Ϸ�˴ϴ�.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">���</button>
        <button type="submit" class="btn btn-primary">��. �����մϴ�.</button>
      </div>
    </div>
  </div>
</div>
  

   <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">ȸ��Ż��</button>
   <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">���� Ż�� �Ͻðڽ��ϱ�</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	<p align="center">�׵��� �� ����Ʈ�� �̿��� �ּż� �����մϴ�.</p>
       	<p  align="center">SeMiD���� Ż�� �ϸ� �ش� ������ ��� ������ �����Ǹ�,</p>
       	<p  align="center">�ٽ� ������ �� �����ϴ�.</p>
       	<p  align="center">SeMiD���� Ż���Ͻðڽ��ϱ�?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">���</button>
        <button type="button" class="btn btn-primary" 
        onclick="location='${pageContext.request.contextPath}/web/member/memberDel?mnum=${memdto.mnum }'">ȸ��Ż�� </button>
      </div>
    </div>
  </div>
</div>
    </div>
</form>
</div>
 </article>
<script>
$(function () {
$('#qwbtn').click(function() {
	location="${pageContext.request.contextPath}/web/qna/qnaboardForm";
});
});
</script>
