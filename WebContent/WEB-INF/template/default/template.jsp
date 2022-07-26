<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="mycontext" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
 <head>
  <TITLE>SeMiD </TITLE>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <link rel="shortcut icon" type="image/x-icon" href="${mycontext }/resources/image/logo.png">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <style>
 	nav .navbar-nav li a{
	  	color: black !important;
	  	font-weight: 500;
	}
 </style>
<script>
$(function(){
	$('#searchv').focusin(function() {
		$(this).val("�˻��� �Է�")
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
<div class="container-lg p-0">
<header class="text-white text-center" >
<tiles:insertAttribute name="header"/>
<!-- Carousel -->
<tiles:insertAttribute name="carousel"/>
</header>
	
<tiles:insertAttribute name="body"/>	
	
<tiles:insertAttribute name="footer"/>
</div>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			<%-- �ڹٽ�ũ��Ʈ I/O --%>
			var reader = new FileReader();
			
			reader.onload = function(e) {
				<%-- e.target.result --%>
				console.log("Path :"+e.target.result);
				$('#bimg').attr('src', e.target.result); 
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(function(){
		<%-- upform.jsp���� �̹��� �̸� ���� ��� --%>
		$('#bfile').change(function() {
			readURL(this);
		});
		

	})
	$('#dbtn1').click(function(){
		location.href = "${pageContext.request.contextPath }/web/board/list";
	})
	$('#dbtn2').click(function(){
		location.href = "${pageContext.request.contextPath }/web/board/updateForm?bnum=${bnum}";
	})
	$('#dbtn3').click(function(){
		location.href = "${pageContext.request.contextPath }/web/board/delete?bnum=${bnum}";
	})
	
</script>
</body>
</html>