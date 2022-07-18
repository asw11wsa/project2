<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
         table img{width: 80px;}
         
         /* paging */
         
         table tfoot ol.paging {
            list-style:none;
         }
         
         table tfoot ol.paging li {
            float:left;
            margin-right:8px;
            background-color: #42484a;
         }
         
         table tfoot ol.paging li a {
            display:block;
            padding:3px 7px;
            border:1px solid #ffffff;
            color:#ffffff;
            font-weight:bold;
         }
         
         table tfoot ol.paging li a:hover {
            background:#00B3DC;
            color:white;
            font-weight:bold;
         }
         
         .disable {
            padding:3px 7px;
            border:1px solid silver;
            color:white;
         }
         .now {
            padding:3px 7px;
            background:#ff4aa5;
            color:white;
            font-weight:bold;
         }
      </style>

    <article >
        <div class="container">
         <header>
            <h1>�Խ���</h1>
         </header>
         <%-- �����丵 �ؾ��� --%>
         <table class="table table-bordered">
            <thead>
               <tr>
                  <th>�Խù� ��ȣ</th>
                  <th>����</th>
                  <th>�����ID</th>
                  <th>�ۼ���¥</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="e" items="${list }">
                  <tr>
                     <td class="text-center">${e.bnum }</td>
                     <td class="align-middle text-center"><a href="detail?bnum=${e.bnum}">${e.bsub }</a></td>
                     <td class="text-center">${e.bwriter }</td>
                     <td class="align-middle">${e.bdate }</td>
                  </tr>
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
                              <li><a href="${pageContext.request.contextPath}/web/board/list?cPage=${nowPage-pagePerBlock }">��������</a></li>
                           </c:otherwise>
                        </c:choose>
                        <!-- i.index ����ؼ� ����¡�� �ε����� ���� -->
                        <c:forEach varStatus="i" begin="${startPage }" end="${endPage }" step="1">
                           <c:choose>
                              <c:when test="${i.index == nowPage }">
                                 <li class="now">${i.index }</li>
                              </c:when>
                              <c:otherwise>
                                 <li><a href="${pageContext.request.contextPath}/web/board/list?cPage=${i.index }">${i.index }</a></li>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:choose>
                           <c:when test="${endPage >= totalPage }">
                              <li class="disable">��������</li>
                           </c:when>
                           <c:when test="${totalPage > (nowPage+pagePerBlock) }">
                              <li><a href="${pageContext.request.contextPath}/web/board/list?cPage=${nowPage+pagePerBlock }">��������</a></li>
                           </c:when>
                           <c:otherwise>
                              <li><a href="${pageContext.request.contextPath}/web/board/list?cPage=${totalPage }">��������</a></li>
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