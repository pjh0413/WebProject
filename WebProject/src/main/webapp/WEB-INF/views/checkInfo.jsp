<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입정보 확인</title>
</head>
<body>
	<div>
		<form action="result" method="post">
			<input type="hidden" name="userId" value="${webVO.userId}">
			<input type="hidden" name="userPwd" value="${webVO.userPwd}">
			<input type="hidden" name="userName" value="${webVO.userName}">
			<input type="hidden" name="userAddr1" value="${webVO.userAddr1}">
			<input type="hidden" name="userAddr2" value="${webVO.userAddr2}">
			<input type="hidden" name="userPhone" value="${webVO.userPhone}">
			<input type="hidden" name="userEmail" value="${webVO.userEmail}">
			<table>
				<tr>
					<td>아이디 : </td>
					<td>${webVO.userId}</td>
				</tr>
<%-- 				<tr>
					<td>패스워드 : </td>
					<td>${webVO.userPwd}</td>
				</tr> --%>
				<tr>
					<td>이름 : </td>
					<td>${webVO.userName}</td>
				</tr>
				<tr>
					<td>성별 : </td>
					<td>${webVO.userGender}</td>
				</tr>
				<tr>
					<td>주소 : </td>
					<td>${webVO.userAddr1}&nbsp;${webVO.userAddr2}</td>
				</tr>
				<tr>
					<td>전화번호 : </td>
					<td>${webVO.userPhone}</td>
				</tr>
				<tr>
					<td>이메일 : </td>
					<td>${webVO.userEmail}</td>
				</tr>
			</table>
			<p>입력하신 정보가 맞습니까?</p>
			<input type="submit" value="확인"/>&nbsp;&nbsp;<input type="button" id="backPage" value="취소"/>
		</form>
	</div>
</body>
<script type="text/javascript">
	window.onload = function (){
		var backPage = document.getElementById('backPage');
		
		backPage.onclick = function(){
			alert('취소 버튼 클릭');
		}
	}
</script>
</html>