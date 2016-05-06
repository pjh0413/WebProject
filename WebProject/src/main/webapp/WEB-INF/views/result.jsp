<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<title></title>
</head>
<body>
	데이터 입력이 완료 되었습니다.<br/>
	가입 페이지로 이동 합니다.
</body>
<script type="text/javascript">
	window.onload = function(){
		toBack();
	}
	
	function toBack(){
		setTimeout('backToMain()',2000);
	}
	
	function backToMain(){
		location.replace("signUp");
	}
</script>
</html>