<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
	if(${cnt} == 1){
		location = "${pageContext.request.contextPath }/web/main";
	}else if(${cnt} == 2){
		alert('일치하는 아이디가 없습니다.');
		location = "${pageContext.request.contextPath }/web/loginChoice";
	}else if(${cnt} == 3){
		alert('비밀번호가 틀립니다.');
		location = "${pageContext.request.contextPath }/web/loginChoice";
	}else{
		alert('잠긴 아이디 입니다.');
		location = "${pageContext.request.contextPath }/web/main";
	}
</script>