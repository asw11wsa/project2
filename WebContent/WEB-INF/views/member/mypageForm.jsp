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
    <label for="mid">아이디 :</label>
	<input type="text"   class="form-control"  name="mid" id="mid" value="${memdto.mid }"   readonly="readonly">
    </div>
    <div class="form-group">
   <label for="mpwd">비밀번호 :  </label>
   <input type="password"   class="form-control"  name="mpwd" id="mpwd" value="${memdto.mpwd }"  required="required" >
   </div>
     <div class="form-group">
    <label for="mname">이름 :</label>
	<input type="text"   class="form-control"  name="mname" id="mname" value="${memdto.mname }"   readonly="readonly">
       </div>
     <div class="form-group">
    <label for="mjubun">주민등록번호 : </label>
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
   <label for="madr">주소 :  </label>
   <input type="text"   class="form-control"  name="madr" id="madr" value="${memdto.madr }"    required="required">
   </div>
    <div class="form-group" style="text-align: right; margin-top: 10px;">
      <button type="button" class="btn btn-primary" id="qwbtn">1:1문의</button>
      <button type="button" class="btn btn-primary" id="qlbtn" 
      onclick="location='${pageContext.request.contextPath}/web/qna/qnaList?mnum=${memdto.mnum }'">문의내용확인</button>
  <!-- Button trigger modal update -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">수정</button>
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
       <p align="center">MyPage의 내용을 수정하시겠습니까?</p>
       <p align="center">'예'를 누르시면 수정이 완료됩니다.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="submit" class="btn btn-primary">예. 수정합니다.</button>
      </div>
    </div>
  </div>
</div>
  

   <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">회원탈퇴</button>
   <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">정말 탈퇴를 하시겠습니까</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       	<p align="center">그동안 이 사이트를 이용해 주셔서 감사합니다.</p>
       	<p  align="center">SeMiD에서 탈퇴를 하면 해당 계정의 모든 정보가 삭제되며,</p>
       	<p  align="center">다시 복구할 수 없습니다.</p>
       	<p  align="center">SeMiD에서 탈퇴하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" 
        onclick="location='${pageContext.request.contextPath}/web/member/memberDel?mnum=${memdto.mnum }'">회원탈퇴 </button>
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
