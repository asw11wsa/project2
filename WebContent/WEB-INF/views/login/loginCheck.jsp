<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	if(${cnt} == 1){
		location = "${pageContext.request.contextPath }/web/main";
	}else{
		alert('��ġ�ϴ� ���̵� �����ϴ�.');
		location = "${pageContext.request.contextPath }/web/loginform";
	}
</script>
</body>
</html>