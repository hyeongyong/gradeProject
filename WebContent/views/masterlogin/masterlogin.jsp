<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
	<%-- jstl-1.2.jar 파일 필요 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
	//절대경로 확인
	String path = request.getContextPath();
	String id_ = request.getParameter("id_");
	if(id_.equals("superadmin")){
		response.sendRedirect(path+"/views/master/masteradmin.jsp");
	}else {
		//response.sendRedirect(path+"/pages/admin/adminpicturelist.jsp");
	}
	
	
%>
