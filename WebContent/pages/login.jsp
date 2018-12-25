<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<%-- jstl-1.2.jar 파일 필요 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	//절대경로 확인
	String path = request.getContextPath();
	String mode = request.getParameter("optradio");
	if(mode.equals("admin")){
		response.sendRedirect(path+"/pages/index.jsp");
	}else if(mode.equals("instructor")){
		//response.sendRedirect(path+"/pages/admin/adminpicturelist.jsp");
	}else{
		//response.sendRedirect(path+"/pages/admin/adminpicturelist.jsp");
		response.sendRedirect(path+"/views/students/student.jsp");
	}
	
	
%>
