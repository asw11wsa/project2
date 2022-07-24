<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<article>
		<header>
            <h1>Qna Comment</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardForm ��� �� �ڸ� --%>
			<fieldset>
					<legend>1��1 ����</legend>
					<%-- action�� UploadDemoController @PostMapping(value = "/�̰��� �����ؾ��Ѵ�") --%>
					<form method="post" action="update" id="upform">
						<input type="hidden" name="inum" id="inum" value="${dto.inum }">
						<div>	
							<label>�� �� : </label>
							<input type="text" name="isub" id="isub"  value="${dto.isub }" readonly="readonly"/>
						</div>
						<br>
						<div>
							<label>�ۼ��� : </label>
							<input type="text" name="iwriter" id="iwriter" value="${dto.iwriter }" readonly="readonly"/>
						</div>
						<br>
						<div class="col-sm-10">
							<label class="">���� ���� : </label>
    						<textarea name="icont" id="icont" rows="5" cols="100">${dto.icont }</textarea>
						</div>
						<br>
						<div>
							<label>�� ¥ : </label>
							<input type="text" name="idate" id="idate" value="${dto.idate }" readonly="readonly"/>
						</div>
						<br>
						<div>
							<label class="">�� �� : </label>
    						<textarea name="iadmincom" id="iadmincom" rows="5" cols="100">${dto.iadmincom }</textarea>
						</div>
						<br>
						<div>
							<a>���� : </a>
							<select id="istate" name='istate' >
							 <option value='�亯�Ϸ�' selected="selected">�亯�Ϸ�</option>
							 <option value='������'>������</option>
							</select>
						</div>
						<br>
						<div>
							<input type="button" value="Home" onclick="location='${pageContext.request.contextPath}/web/'">
							<input type="submit" value="�亯" id="btn1" />
						</div>
					</form>
				</fieldset>
        </div>
</article>