<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2 class="p-4 fw-bold">��ǰ�� : ${vo.title }</h2>
<div class="row">
	<div class="col-sm-12 col-lg-9">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active px-5 py-2 text-dark fw-bold"
					id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
					type="button" role="tab" aria-controls="nav-home"
					aria-selected="true">��������</button>
				<button class="nav-link px-5 py-2 text-dark fw-bold" id="nav-profile-tab"
					data-bs-toggle="tab" data-bs-target="#nav-profile" type="button"
					role="tab" aria-controls="nav-profile" aria-selected="false">�����ı�</button>
				<button class="nav-link px-5 py-2 text-dark fw-bold" id="nav-contact-tab"
					data-bs-toggle="tab" data-bs-target="#nav-contact" type="button"
					role="tab" aria-controls="nav-contact" aria-selected="false">��ǰ���</button>
			</div>
		</nav>
		<div class="tab-content p-5" id="nav-tabContent">
			<%-- ��ǰ ���� --%>
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab" tabindex="0">
				<div class="row">
					<div id="carouselExampleControls" class="carousel slide rounded w-50 col-sm-12 col-lg-6" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="${pageContext.request.contextPath }/resources/imgfile/${vo.imga}" class="d-block w-100" alt="...">
					    </div>
					    <c:if test="${vo.imgb != 'noimage.jpg' }">
						    <div class="carousel-item">
						      <img src="${pageContext.request.contextPath }/resources/imgfile/${vo.imgb}" class="d-block w-100" alt="...">
						    </div>
					    </c:if>
					    <c:if test="${vo.imgc != 'noimage.jpg' }">
						    <div class="carousel-item">
						      <img src="${pageContext.request.contextPath }/resources/imgfile/${vo.imgc}" class="d-block w-100" alt="...">
						    </div>
					    </c:if>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>
					<div class="col-sm-12 col-lg-6 p-5">
						<p class="fs-5 fw-bold">��ǰ ����</p>
						${vo.content }
					</div>
				</div>	
			</div>
			<%-- ��ǰ ���� --%>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab" tabindex="0">�����ı�</div>
			<%-- ���� ���� --%>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab" tabindex="0">
				<div class="cont_unit">
					<div class="text_wrap big type">
						<strong class="tit">��ǰ���</strong> <span class="right_cont"><a
							href="#none" class="btn gray">����󼼺���</a></span>
					</div>
					<div class="prod_terms">
						<p>
							�� ��ǰ�� ����� ��Ҵ� <b class="pk">���ܿ��� ǥ�ؾ��</b>�� ������� �˷��帳�ϴ�.
						</p>
						<dl>
							<dt>���� ����</dt>
							<dd>
								<b class="pk">������ ���� 3�� �̳��� 1�δ� 100,000���� �����ϼž��մϴ�.</b>
							</dd>
							<dd>
								�� ������ ȣ��, �װ�, ���� ���� � ���Ͽ� ����� �� ������, ��Ȳ�� ���� ������ ���������� ����� ��
								�ֽ��ϴ�.<br>
								<span class="pk">��, �Ʒ� ��õǾ� �ִ� ��ҷ� ���� ����Ⱓ�� �����Ͻ� ���Բ�����
									���ݺ��� ��� �����ᰡ ���� �� ��� ������ �ݾ��� �������� �����ϼž� �մϴ�.</span>
							</dd>
							<dt>��ҷ� ����</dt>
							<dd>
								���� ��ҽ� <b>���ܿ���ǥ�ؾ��</b> �� 16�� �Һ��ں����ذ������ ���� �Ʒ��� ������ ��ҷᰡ �ΰ��˴ϴ�.
								(��, ����� ��å������ ������� ��� ��쿡�� ������ ������ ����˴ϴ�.
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">30����</b>(~30)���� �뺸��(2022��07��07�� ����): <b
									class="pk">����ȯ��</b>
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">20����</b>(29~20)����
								�뺸��(2022��07��08��~2022��07��17��): �������� <b class="pk">10%</b> ���
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">10����</b>(19~10)����
								�뺸��(2022��07��18��~2022��07��27��): �������� <b class="pk">15%</b> ���
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">8����</b>(9~8)����
								�뺸��(2022��07��28��~2022��07��29��): �������� <b class="pk">20%</b> ���
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">1����</b>(7~1)����
								�뺸��(2022��07��30��~2022��08��05��): �������� <b class="pk">30%</b> ���
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">����</b> �뺸��: �������� <b class="pk">50%</b>���
							</dd>
							<dd>�� ��������� ���� ����,����,�Կ�,��������� ������ ����ϴ� ��� [���ܼ�] ���� �ٰ��Ͽ� ȯ����
								�����ϸ� ����� ���� 7���̳� ���������� �������ֽñ� �ٶ��ϴ�.(�󼼱����� �������)</dd>
							<!---->
							<!---->
							<!---->
							<!---->
							<dt>��������ο� �� ���� �� �������</dt>
							<dd>���� ��������ο��� �������� �ƴ��Ͽ� �������� �����ϴ� ��� ���ళ�� 7�������� �����ڿ���
								�����Ͽ��� �մϴ�.</dd>
							<dd>��簡 ���������� �� �̴޷� ������ ���ϳ� ������ ���� �ƴ��ϰ� ����� �����ϴ� ��� �̹� ���޹���
								���� ȯ�� �ܿ� ���� �� �׸��� 1�� �ݾ��� �����ڿ��� ����Ͽ��� �մϴ�.</dd>
							<dd>
								��. ���ళ�� <b class="pk">7����</b>(~7)���� ������ : <b class="pk">����
									ȯ��</b>
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">1����</b>(6~1)���� ������ : �������� <b class="pk">30%</b>
								���
							</dd>
							<dd>
								��. ���ళ�� <b class="pk">����</b> ������ : �������� <b class="pk">50%</b>
								���
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12 col-lg-3">
		<div class="card text-center mt-5" style="width: 18rem;">
		  <div class="card-body">
		  <div>
		  	<p class="text-center mb-1">����</p>
		  	<div class="btn-group w-50 mb-4" role="group" aria-label="Basic example">
			  <button type="button" class="btn btn-secondary" id="adultBtnDown">-</button>
			  <input type="text" id="adult" class="w-25 text-center" value="0" readonly />
			  <button type="button" class="btn btn-secondary" id="adultBtnUp">+</button>
			</div>
			<p class="text-center mb-1">�Ƶ�</p>
		  	<div class="btn-group w-50 mb-4" role="group" aria-label="Basic example">
			  <button type="button" class="btn btn-secondary" id="childrenBtnDown">-</button>
			  <input type="text" id="children" class="w-25 text-center" value="0" readonly />
			  <button type="button" class="btn btn-secondary" id="childrenBtnUp">+</button>
			</div>
		    <a href="#" class="btn btn-warning d-block w-50 m-auto" id="bookingBtn">�����ϱ�</a>
		  </div>
		</div>
	</div>
</div>
</div>
<script>
	$(function(){
		$("#adultBtnDown").click(function(){
			$("#adult").val(parseInt($("#adult").val()) - 1);
			if($("#adult").val() < 0){
				$("#adult").val(0);
			}
		})
		
		$("#adultBtnUp").click(function(){
			$("#adult").val(parseInt($("#adult").val()) + 1);
		})
		
		$("#childrenBtnDown").click(function(){
			$("#children").val(parseInt($("#children").val()) - 1);
			if($("#children").val() < 0){
				$("#children").val(0);
			}
		})
		
		$("#childrenBtnUp").click(function(){
			$("#children").val(parseInt($("#children").val()) + 1);
		})
		
		$("#bookingBtn").click(function(){
			if($("#children").val() == 0 && $("#adult").val() == 0){
				alert("�ο��� ������ �ּ���");
			}else{
				location = `${pageContext.request.contextPath }/web/tourlist/book?num=${vo.num}&adult=\${$("#adult").val()}&children=\${$("#children").val()}`;	
			}
		})
	})
</script>