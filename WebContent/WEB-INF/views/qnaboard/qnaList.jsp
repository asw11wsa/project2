<%@page import="com.project.www.dto.QnaboardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <article >
        <header>
            <h1>QnaBoard</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>
  <table class="table table-bordered">
    <thead>
      <tr>   
      	<th>��ȣ</th>
        <th>����</th>
        <th>���ǻ���</th>
        <th>�ۼ���</th>
        <th>�ۼ���¥</th>
      </tr>
    </thead>
    <tbody>
<c:forEach var="e" items="${list }">
      <tr>
      <td>${e.inum }</td>
        <td><a href="qnaDetail?num=${e.inum} ">${e.isub }</a></td>
   	    <td>${e.istate }</td>
	    <td>${e.iwriter }</td>
   	    <td>${e.idate }</td>
      </tr>
        </c:forEach>
        </tbody>       
  </table>
        </div>
    </article>