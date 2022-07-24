<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<article >
        <header>
            <h1>FileUpload Demo</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <div class="container">
        <%-- boardForm�� �ڸ� --%>
		<fieldset>
			<legend>�̹��� ���ε� ��</legend>
			<form method="post" action="uploadpro" enctype="multipart/form-data"
				id="upform">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�� ��</label>
					<div class="col-sm-10">
						<input type="text" name="bsub" id="bsub" placeholder="������ �Է��ϼ���." />
					</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">����/�ؿ�</label>
					<div>
						<select name="category" id="category">
							<option value="����" selected>����</option>
							<option value="�ؿ�">�ؿ�</option>
						</select>
					</div>
				</div>	
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�ۼ���</label>
					<div class="col-sm-10">
						<input class="bg-light rounded" type="text" name="bwriter" id="bwriter" value="${sessionScope.sessionID}" readonly="readonly" />
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">*�̹������ε�</label>
					<div class="col-sm-10">
						<input type="file" name="bfile" id="bfile" />
					</div>
					<div class="col-sm-10">
						<img
							src="${pageContext.request.contextPath}/resources/image/noimage.jpg"
							id="bimg" class="w-50">
					</div>
				</div>				
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ����</label>
					<textarea name="bcont" id="bcont" rows="5" cols="13"></textarea>
				</div>

				<div class="row mb-3 ">
					<div class="col-sm-10">
						<input type="submit" value="���" id="btn1" class="btn btn-info" />
					</div>
				</div>
			</form>
		</fieldset>
	</div>
    </article>
    
