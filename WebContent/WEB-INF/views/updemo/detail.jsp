<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>

<form>
    <div class="form-group">
    <input type="hidden" id="bnum" name="bnum" value="${vo.bnum }">
      <label for="bsub">제목</label>
<!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
<!-- required 속성을 설정하면 필수입력 사항이된다. -->
<!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
      <input type="text" class="form-control" id="bsub" value="${vo.bsub }" readonly="readonly">
    </div>
    <div class="form-group">
   <label for="bcont">내용</label>
<!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
<!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
   <input type="text" class="form-control" id="bcont" value="${vo.bcont }" readonly="readonly">
 </div>
    <div class="form-group">
      <label for="bwriter">작성자</label>
      <input type="text" class="form-control" id="bwriter" value="${vo.bwriter }" readonly="readonly">
   </div>
   <div class="form-group">
      <label for="bdate">작성날짜</label>
      <input type="text" class="form-control" id="bdate" value="${vo.bdate }" readonly="readonly">
   </div>
   <div class="form-group">
      <label for="bimg"></label>
      <img class="w-75" src="${pageContext.request.contextPath}/resources/imgfile/${vo.bimg }" id="bimg">
   </div>
   
    <button type="button" class="btn btn-default" id="dbtn1">이전</button>
    <button type="button" class="btn btn-default" id="dbtn2">수정</button>
    <button type="button" class="btn btn-default" id="dbtn3">삭제</button>
  </form>
        </div>
 
    </article>