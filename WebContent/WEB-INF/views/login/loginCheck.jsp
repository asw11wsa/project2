<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
	if(${cnt} == 1){
		location = "${pageContext.request.contextPath }/web/main";
	}else if(${cnt} == 2){
		alert('��ġ�ϴ� ���̵� �����ϴ�.');
		location = "${pageContext.request.contextPath }/web/loginform";
	}else if(${cnt} == 3){
		alert('��й�ȣ�� Ʋ���ϴ�.');
		location = "${pageContext.request.contextPath }/web/loginform";
	}else{
		alert('��� ���̵� �Դϴ�.');
		location = "${pageContext.request.contextPath }/web/main";
	}
</script>