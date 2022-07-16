<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2 class="p-4 fw-bold">상품명 : ${vo.title }</h2>
<div class="row">
	<div class="col-sm-12 col-lg-9">
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active px-5 py-2 text-dark fw-bold"
					id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
					type="button" role="tab" aria-controls="nav-home"
					aria-selected="true">여행정보</button>
				<button class="nav-link px-5 py-2 text-dark fw-bold"
					id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">예약자 명단</button>
				<button class="nav-link px-5 py-2 text-dark fw-bold"
					id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false">상품약관</button>
			</div>
		</nav>
		<div class="tab-content p-5" id="nav-tabContent">
			<%-- 상품 정보 --%>
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab" tabindex="0">
				<div class="row">
					<div id="carouselExampleControls"
						class="carousel slide rounded w-50 col-sm-12 col-lg-6"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img
									src="${pageContext.request.contextPath }/resources/imgfile/${vo.imga}"
									class="d-block w-100" alt="...">
							</div>
							<c:if test="${vo.imgb != 'noimage.jpg' }">
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/resources/imgfile/${vo.imgb}"
										class="d-block w-100" alt="...">
								</div>
							</c:if>
							<c:if test="${vo.imgc != 'noimage.jpg' }">
								<div class="carousel-item">
									<img
										src="${pageContext.request.contextPath }/resources/imgfile/${vo.imgc}"
										class="d-block w-100" alt="...">
								</div>
							</c:if>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
					<div class="col-sm-12 col-lg-6 p-5">
						<p class="fs-5 fw-bold">상품 내용</p>
						${vo.content }
					</div>
				</div>
			</div>
			<%-- 상품 정보 --%>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab" tabindex="0">
				<article>
					<header>
						<h1>예약 리스트 데모</h1>
					</header>
					<ul class="list-unstyled">
						<li class="border-top my-3"></li>
					</ul>
					<div>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>예약그룹번호</th>
									<th>예약번호</th>
									<th>여행번호</th>
									<th>성인/아동</th>
									<th>주민등록번호</th>
									<th>핸드폰번호</th>
									<th>이메일</th>
									<th>영어 이름 first</th>
									<th>영어 이름 last</th>
									<th>예약자아이디</th>
									<th>이름</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="e" items="${list }">
									<tr>
										<td>${e.booknum }</td>
										<td>${e.num }</td>
										<td>${e.tournum }</td>
										<td>${e.personchk }</td>
										<td>${e.jumin }</td>
										<td>${e.phone }</td>
										<td>${e.email }</td>
										<td>${e.engfirst }</td>
										<td>${e.englast }</td>
										<td>${e.booker }</td>
										<td>${e.name }</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th colspan="11" style="text-align: center;">
										<ul class="pagination" style="margin: 0 auto; width: 70%">
											<c:choose>
												<c:when test="${startPage < 6}">
													<li class="page-item disabled"><a class="page-link"
														href="#">이전으로</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item active"><a class="page-link"
														href="${pageContext.request.contextPath}/upload/uplist?cPage=${startPage-1}">이전으로</a></li>
												</c:otherwise>
											</c:choose>
											<c:forEach varStatus="i" begin="${startPage}"
												end="${endPage }" step="1">
												<c:choose>
													<c:when test="${i.index == nowPage}">
														<li class="page-item disabled"><a class="page-link"
															href="#">${i.index}</a></li>
													</c:when>
													<c:otherwise>
														<li class="page-item"><a class="page-link"
															href="${pageContext.request.contextPath}/upload/uplist?cPage=${i.index}">${i.index}</a></li>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:choose>
												<c:when test="${endPage >= totalPage }">
													<li class="page-item disabled"><a class="page-link"
														href="#">다음으로</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item active"><a class="page-link"
														href="${pageContext.request.contextPath}/upload/uplist?cPage=${endPage+1}">다음으로</a></li>
												</c:otherwise>
											</c:choose>
										</ul>
									</th>
								</tr>
							</tfoot>
						</table>
					</div>

				</article>
			</div>
			<%-- 법률 정보 --%>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab" tabindex="0">
				<div class="cont_unit">
					<div class="text_wrap big type">
						<strong class="tit">상품약관</strong> <span class="right_cont"><a
							href="#none" class="btn gray">약관상세보기</a></span>
					</div>
					<div class="prod_terms">
						<p>
							본 상품의 예약과 취소는 <b class="pk">국외여행 표준약관</b>이 적용됨을 알려드립니다.
						</p>
						<dl>
							<dt>계약금 규정</dt>
							<dd>
								<b class="pk">예약일 기준 3일 이내에 1인당 100,000원을 납입하셔야합니다.</b>
							</dd>
							<dd>
								위 계약금은 호텔, 항공, 현지 사정 등에 의하여 변경될 수 있으며, 상황에 따라 고객님의 결제시한은 당겨질 수
								있습니다.<br> <span class="pk">단, 아래 명시되어 있는 취소료 규정
									적용기간에 예약하신 고객님께서는 계약금보다 취소 수수료가 높을 시 취소 수수료 금액을 계약금으로 납부하셔야
									합니다.</span>
							</dd>
							<dt>취소료 규정</dt>
							<dd>
								여행 취소시 <b>국외여행표준약관</b> 제 16조 소비자분쟁해결규정에 따라 아래의 비율로 취소료가 부과됩니다.
								(단, 당사의 귀책사유로 여행출발 취소 경우에도 동일한 규정이 적용됩니다.
							</dd>
							<dd>
								가. 여행개시 <b class="pk">30일전</b>(~30)까지 통보시(2022년07월07일 이전): <b
									class="pk">계약금환급</b>
							</dd>
							<dd>
								나. 여행개시 <b class="pk">20일전</b>(29~20)까지
								통보시(2022년07월08일~2022년07월17일): 여행요금의 <b class="pk">10%</b> 배상
							</dd>
							<dd>
								다. 여행개시 <b class="pk">10일전</b>(19~10)까지
								통보시(2022년07월18일~2022년07월27일): 여행요금의 <b class="pk">15%</b> 배상
							</dd>
							<dd>
								라. 여행개시 <b class="pk">8일전</b>(9~8)까지
								통보시(2022년07월28일~2022년07월29일): 여행요금의 <b class="pk">20%</b> 배상
							</dd>
							<dd>
								마. 여행개시 <b class="pk">1일전</b>(7~1)까지
								통보시(2022년07월30일~2022년08월05일): 여행요금의 <b class="pk">30%</b> 배상
							</dd>
							<dd>
								바. 여행개시 <b class="pk">당일</b> 통보시: 여행요금의 <b class="pk">50%</b>배상
							</dd>
							<dd>※ 여행출발일 이전 상해,질병,입원,사망등으로 여행을 취소하는 경우 [진단서] 증빙 근거하여 환불이
								가능하며 출발일 기준 7일이내 증빙서류를 제출해주시기 바랍니다.(상세규정은 약관참조)</dd>
							<!---->
							<!---->
							<!---->
							<!---->
							<dt>최저출발인원 미 충족 시 계약해제</dt>
							<dd>당사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행개시 7일전까지 여행자에게
								통지하여야 합니다.</dd>
							<dd>당사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은
								계약금 환급 외에 다음 각 항목의 1의 금액을 여행자에게 배상하여야 합니다.</dd>
							<dd>
								가. 여행개시 <b class="pk">7일전</b>(~7)까지 통지시 : <b class="pk">계약금
									환급</b>
							</dd>
							<dd>
								나. 여행개시 <b class="pk">1일전</b>(6~1)까지 통지시 : 여행요금의 <b class="pk">30%</b>
								배상
							</dd>
							<dd>
								다. 여행개시 <b class="pk">당일</b> 통지시 : 여행요금의 <b class="pk">50%</b>
								배상
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>