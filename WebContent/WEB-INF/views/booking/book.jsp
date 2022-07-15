<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<form action="${pageContext.request.contextPath}/web/booking/addbooking" method="post">
   <input type="hidden" name="tournum" value="${num }"/>
   <h3 class="p-3">예약하기</h3>
   <c:forEach var="i" begin="1" end="${adult }">
      <div class="mb-2 px-5 mt-3">
         <p class="fw-bold fs-4">어른${i}</p>
         <input type="hidden" id="personchk" name="personchk" value="성인" >
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">이름</span>
           <input type="text" class="form-control" placeholder="Name" id="name" name="name">
           <span class="input-group-text" style="width:8rem" id="jumin">주민번호</span>
           <input type="text" class="form-control" placeholder="991212000000" id="jumin" name="jumin">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">영어이름(성)</span>
           <input type="text" class="form-control" placeholder="Kim" id="engfirst" name="engfirst">
           <span class="input-group-text" style="width:8rem">영어이름(이름)</span>
           <input type="text" class="form-control" placeholder="Sim" id="englast" name="englast">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">전화번호</span>
           <input type="text" class="form-control" placeholder="01011112222" id="phone" name="phone">
           <span class="input-group-text" style="width:8rem">이메일</span>
           <input type="text" class="form-control" placeholder="hello@gmail.com" id="email" name="email">
         </div>
      </div>
   </c:forEach>
   <c:forEach var="i" begin="1" end="${children }">
      <div class="mb-2 px-5 mt-3">
         <p class="fw-bold fs-4">아이${i}</p>
         <input type="hidden" id="personchk" name="personchk" value="아동" >
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">이름</span>
           <input type="text" class="form-control" placeholder="Name" id="name" name="name">
           <span class="input-group-text" style="width:8rem">주민번호</span>
           <input type="text" class="form-control" placeholder="991212000000" id="jumin" name="jumin">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">영어이름(성)</span>
           <input type="text" class="form-control" placeholder="Kim" id="engfirst" name="engfirst">
           <span class="input-group-text" style="width:8rem">영어이름(이름)</span>
           <input type="text" class="form-control" placeholder="Sim" id="englast" name="englast">
         </div>
         <div class="input-group flex-nowrap mb-1">
           <span class="input-group-text" style="width:8rem">전화번호</span>
           <input type="text" class="form-control" placeholder="01011112222" id="phone" name="phone">
           <span class="input-group-text" style="width:8rem">이메일</span>
           <input type="text" class="form-control" placeholder="hello@gmail.com" id="email" name="email">
         </div>
      </div>
   </c:forEach>
   <div class="d-grid gap-5 mx-5 mt-3">
     <button class="btn btn-primary" type="submit">신청하기</button>
   </div>
</form>