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
      <label for="bsub">����</label>
<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
      <input type="text" class="form-control" id="bsub" value="${vo.bsub }" readonly="readonly">
    </div>
    <div class="form-group">
   <label for="bcont">����</label>
<!--  �������� �����͸� �Է��ϰ� �ϰ��� �Ҷ� textarea �±׸� ����Ѵ�. -->
<!--  textarea �ȿ� �ִ� ��� ���ڴ� �״�� ��Ÿ����. ���鹮��, tag, enter -->
   <input type="text" class="form-control" id="bcont" value="${vo.bcont }" readonly="readonly">
 </div>
    <div class="form-group">
      <label for="bwriter">�ۼ���</label>
      <input type="text" class="form-control" id="bwriter" value="${vo.bwriter }" readonly="readonly">
   </div>
   <div class="form-group">
      <label for="bdate">�ۼ���¥</label>
      <input type="text" class="form-control" id="bdate" value="${vo.bdate }" readonly="readonly">
   </div>
   <div class="form-group">
      <label for="bimg"></label>
      <img class="w-75" src="${pageContext.request.contextPath}/resources/imgfile/${vo.bimg }" id="bimg">
   </div>
   
    <button type="button" class="btn btn-default" id="dbtn1">����</button>
    <button type="button" class="btn btn-default" id="dbtn2">����</button>
    <button type="button" class="btn btn-default" id="dbtn3">����</button>
  </form>
        </div>
 
    </article>