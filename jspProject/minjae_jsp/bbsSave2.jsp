<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	BBSDAO dao = new BBSDAO();
	BBSDTO dto = new BBSDTO();
	
	
	int num = Integer.parseInt("num");
	String title = request.getParameter("title");
	String write = request.getParameter("write");
	
	
	dto.setNum(num);
	dto.setTitle(title);
	dto.setWrite(write);
%>
<%
	dao.writeUpdate(dto);
	response.sendRedirect("BBS.jsp");
%>

</body>
</html>