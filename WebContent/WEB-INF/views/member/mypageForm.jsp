<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <article >
<div class="container">

<header>
    <h1>MyPage</h1>
     <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
</header>
<table class="table table-bordered">
<tr>

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
      <button type="submit" class="btn btn-primary">����</button>
      <button type="button" class="btn btn-primary" onclick="location='${pageContext.request.contextPath}/web/member/memberDel?mnum=${memdto.mnum }'" >ȸ��Ż��</button>
    </div>

</form>

</tr>
</table>

</div>
 </article>

