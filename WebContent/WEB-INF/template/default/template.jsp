<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
 <head>
  <TITLE> New Document </TITLE>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${mycontext}/resources/css/style.css"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <style>
 
select.btn-mini {
    height: auto;
    width : 200px;
    line-height: 14px;
}
.card {
    
    border: none;
    box-shadow: 5px 6px 6px 2px #e9ecef;
    border-radius: 4px;
}
.dots{
  height: 4px;
  width: 4px;
  margin-bottom: 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
}

.badge{
    padding: 7px;
    padding-right: 9px;
    padding-left: 16px;
    box-shadow: 5px 6px 6px 2px #e9ecef;
}

.user-img{
    margin-top: 4px;
}

.check-icon{
    font-size: 17px;
    color: #c3bfbf;
    top: 1px;
    position: relative;
    margin-left: 3px;
}
.form-check-input{
    margin-top: 6px;
    margin-left: -24px !important;
    cursor: pointer;
}
.form-check-input:focus{
    box-shadow: none;
}

.icons i{
    margin-left: 8px;
}
.reply{
    margin-left: 12px;
}

.reply small{
    color: #b7b4b4;
}
.reply small:hover{
    color: green;
    cursor: pointer;
}
.bgGr1 {
	background-color: #0d6efd
}
.bgGr2 {
	background-color: #ffc107
}
.bgGr3 {
	background-color: #0dcaf0
}
#colTitle{
	background-color: #000000;
}

.mytable-condensed{
  font-size: 11px;
}
 </style>
<script>
$(function(){
	$('#searchv').focusin(function() {
		$(this).val("검색어 입력")
	});
	$('#searchv').focusout(function() {
		$(this).val("")
	});
	
	$('#wbtn').click(function(){
		location.href = "${pageContext.request.contextPath }/upload/upform";
	})
	
});
</script>
</head>
<body>
<header class="text-white text-center" >
<tiles:insertAttribute name="header"/>
<!-- Carousel -->
<tiles:insertAttribute name="carousel"/>
</header>
<%--bg-dark navbar-dark --%>
<tiles:insertAttribute name="menu"/>
	
<tiles:insertAttribute name="body"/>	
	
<tiles:insertAttribute name="footer"/>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			<%-- 자바스크립트 I/O --%>
			var reader = new FileReader();
			
			reader.onload = function(e) {
				<%-- e.target.result --%>
				console.log("Path :"+e.target.result);
				$('#imgx').attr('src', e.target.result); 
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function(){
		<%-- upform.jsp에서 이미지 미리 보기 기능 --%>
		$('#mfile').change(function() {
			readURL(this);
		});
		

	})
</script>
</body>
</html>