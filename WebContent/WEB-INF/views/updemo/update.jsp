<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<article >
        <header>
            <h1>update Form</h1>
        </header>
        <ul class="list-unstyled"><li class="border-top my-3"></li></ul>
        <fieldset>
			<legend>�̹��� ���ε� ��</legend>
			
			<form method="post" action="update" enctype="multipart/form-data"
				id="upform">
				<input type="hidden" id="bnum" name="bnum" value="${vo.bnum }">
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�� ��</label>
					<div class="col-sm-10">
						<input type="text" name="bsub" id="bsub" value="${vo.bsub }" placeholder="������ �Է��ϼ���." />
					</div>

				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�ۼ���</label>
					<div class="col-sm-10">
						<input type="text" name="bwriter" id="bwriter" value="${vo.bwriter }" />
					</div>
				</div>
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">*�̹������ε�</label>
					<div class="col-sm-10">
						<input type="file" name="bfile" id="bfile" />
					</div>
					<div class="col-sm-10">
						<img
							src="${pageContext.request.contextPath}/resources/imgfile/${vo.bimg }"
							id="bimg" style="width: 100px;">
					</div>
				</div>				
				<div class="row mb-3">
					<label class="col-sm-2 col-form-label">�̹��� ����</label>
					<textarea name="bcont" id="bcont"  rows="5" cols="13"></textarea>
				</div>

				<div class="row mb-3 ">
					<div class="col-sm-10">
						<input type="submit" value="���" id="btn1" class="btn btn-info" />
						<!--  input type="button" value="���" id="btn1" class="btn btn-danger"
							onclick="location='ex1_list.jsp?cPage=1'" /-->
					</div>
				</div>
			</form>
		</fieldset>
    </article>
    
