<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 

    <article >
        <header>
            <h1>Board Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div>
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>��ȣ</th>
        <th>����</th>
        <th>�ۼ���</th>
        <th>��ȸ��</th>
        <th>�ۼ���¥</th>
      </tr>
    </thead>
    <tbody>
    <%-- for start --%>
    <c:forEach var="e" items="${list }">
      <tr>
        <td>${e.bnum }</td>
        <td><a href="boardDetail?num=${e.bnum}">${e.bsub }</a></td>
        <td>${e.bwriter }</td>
        <td>1000</td>
        <td>${e.bdate }</td>
      </tr>
      <%-- for end --%>
      </c:forEach>
        </tbody>      
        <tfoot>
               <tr>
                  <td colspan="3">
                     <ol class="paging">
                        <c:choose>
                           <c:when test="${startPage < 6 }">
                              <li class="disable">��������</li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${nowPage-pagePerBlock }">��������</a></li>
                           </c:otherwise>
                        </c:choose>
                        <!-- i.index ����ؼ� ����¡�� �ε����� ���� -->
                        <c:forEach varStatus="i" begin="${startPage }" end="${endPage }" step="1">
                           <c:choose>
                              <c:when test="${i.index == nowPage }">
                                 <li class="now">${i.index }</li>
                              </c:when>
                              <c:otherwise>
                                 <li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${i.index }">${i.index }</a></li>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:choose>
                           <c:when test="${endPage >= totalPage }">
                              <li class="disable">��������</li>
                           </c:when>
                           <c:when test="${totalPage > (nowPage+pagePerBlock) }">
                              <li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${nowPage+pagePerBlock }">��������</a></li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="${pageContext.request.contextPath}/web/adminmember/adminMember?cPage=${totalPage }">��������</a></li>
                           </c:otherwise>
                        </c:choose>
                     </ol>
                  </td>
                  <td>
                  <c:if test="${sessionScope.sessionID != null }">
                  	<a href="${pageContext.request.contextPath}/web/upload/upform">���ۼ�</a>
                  </c:if>
                  <c:if test="${sessionScope.sessionID == null }">
                  	<a href="${pageContext.request.contextPath}/web/loginform">���ۼ�</a>
                  </c:if>
                  
                  </td>
               </tr>
            </tfoot>
  </table>
        </div>
 
    </article>
    
    