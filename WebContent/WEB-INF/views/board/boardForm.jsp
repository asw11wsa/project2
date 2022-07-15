<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>
        <%-- boardForm�� �ڸ� --%>
  			  <h2>�Խ��� �۾���</h2>
  <form action="boardIn" method="post">
  <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
    <div class="form-group">
      <label for="title">����</label>
<!-- placeholder �Ӽ� �Է��� �����Ͱ� ���� ��� ������� ��Ÿ����.���������� �Է��� 100�ڱ����� ���� -->
<!-- required �Ӽ��� �����ϸ� �ʼ��Է� �����̵ȴ�. -->
<!-- pattern �Ӽ��� �̿��� ����ǥ�������� �������� ��ȿ�� �˻縦 �� �� �ִ�. -->
      <input type="text" class="form-control" id="title"
       placeholder="���� �Է�(4-100)" name="title"
       maxlength="100" required="required"
       pattern=".{4,100}">
    </div>
    <div class="form-group">
   <label for="content">����</label>
<!--  �������� �����͸� �Է��ϰ� �ϰ��� �Ҷ� textarea �±׸� ����Ѵ�. -->
<!--  textarea �ȿ� �ִ� ��� ���ڴ� �״�� ��Ÿ����. ���鹮��, tag, enter -->
   <textarea class="form-control" rows="5" id="content"
    name="content" placeholder="���� �ۼ�"></textarea>
 </div>
    <div class="form-group">
      <label for="writer">�ۼ���</label>
      <input type="text" class="form-control" id="writer"
       placeholder="�ۼ���(2��-10��)" name="writer" value="${sessionScope.sessionID}" readonly="readonly">
    </div>
    <button type="submit" class="btn btn-default">���</button>
  </form>
        </div>
 
    </article>