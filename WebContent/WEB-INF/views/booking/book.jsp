<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="${pageContext.request.contextPath}/web/booking/addbooking" method="post">
   <input type="hidden" name="tournum" value="${num }"/>
   <h3 class="p-3">�����ϱ�</h3>
   <c:forEach var="i" begin="1" end="${adult }">
      <div class="mb-2 px-5 mt-3">
         <p class="fw-bold fs-4">�${i}</p>
         <input type="hidden" id="personchk" name="personchk" value="����" >
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">�̸�</span>
           <input type="text" class="form-control" placeholder="Name" id="name" name="name">
           <span class="input-group-text" style="width:8rem" id="jumin">�ֹι�ȣ</span>
           <input type="text" class="form-control" placeholder="991212000000" id="jumin" name="jumin">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">�����̸�(��)</span>
           <input type="text" class="form-control" placeholder="Kim" id="engfirst" name="engfirst">
           <span class="input-group-text" style="width:8rem">�����̸�(�̸�)</span>
           <input type="text" class="form-control" placeholder="Sim" id="englast" name="englast">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">��ȭ��ȣ</span>
           <input type="text" class="form-control" placeholder="01011112222" id="phone" name="phone">
           <span class="input-group-text" style="width:8rem">�̸���</span>
           <input type="text" class="form-control" placeholder="hello@gmail.com" id="email" name="email">
         </div>
      </div>
   </c:forEach>
   <c:forEach var="i" begin="1" end="${children }">
      <div class="mb-2 px-5 mt-3">
         <p class="fw-bold fs-4">����${i}</p>
         <input type="hidden" id="personchk" name="personchk" value="�Ƶ�" >
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">�̸�</span>
           <input type="text" class="form-control" placeholder="Name" id="name" name="name">
           <span class="input-group-text" style="width:8rem">�ֹι�ȣ</span>
           <input type="text" class="form-control" placeholder="991212000000" id="jumin" name="jumin">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">�����̸�(��)</span>
           <input type="text" class="form-control" placeholder="Kim" id="engfirst" name="engfirst">
           <span class="input-group-text" style="width:8rem">�����̸�(�̸�)</span>
           <input type="text" class="form-control" placeholder="Sim" id="englast" name="englast">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">��ȭ��ȣ</span>
           <input type="text" class="form-control" placeholder="01011112222" id="phone" name="phone">
           <span class="input-group-text" style="width:8rem">�̸���</span>
           <input type="text" class="form-control" placeholder="hello@gmail.com" id="email" name="email">
         </div>
      </div>
   </c:forEach>
   <div class="d-grid gap-5 mx-5 mt-3">
     <button class="btn btn-primary" type="submit">��û�ϱ�</button>
   </div>
</form>