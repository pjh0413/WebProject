<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="webDao" class="com.project.web.DAO.WebDAO"></jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");

	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	boolean flag = true;
	String str = "";
	
	if(userId == null || userId.equals("")){
		str = "NOTHING";
		out.print(str);
	}
	
	if(!userId.equals("")){
		flag = webDao.checkId(userId);
	}
	
	if(flag){
		str = "NO";
		out.print(str);
	}else{
		str = "YES";
		out.print(str);
	}

%>