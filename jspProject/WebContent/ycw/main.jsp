<%@page import="bean.CountDTO"%>
<%@page import="java.sql.Date"%>
<%@page import="bean.CountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/* 아이디값 */
String id = (String)session.getAttribute("id");
%>
<!-- 아이디출력 -->
<c:out value="<%= id %>" default="id"/>

<!-- 로그아웃 -->
<a href="logout.jsp">로그아웃</a>

<!-- 관리자의 경우 -->
<% if(session.getAttribute("id").equals("admin@naver.com")) {%>
<a href="adminPage.jsp">관리자페이지</a>
<%} %>
<a href="myPage.jsp">마이페이지</a>
<%
/* 방문자 카운트 */
/* 방문이 처음일때 */
if(session.getAttribute("visit")==null) {
	session.setAttribute("visit", "today");
	java.util.Date today = new java.util.Date(); 	
	Date date = new Date(today.getTime());
	CountDAO cDao = new CountDAO();
	
	CountDTO cDto = cDao.select("visitDate", date);
	
	/* 오늘 처음방문자 */
	if(cDto.getVisitDate()==null) {
		CountDTO cDto2 = new CountDTO();
		cDto2.setVisitDate(date);
		cDto2.setCount(1);
		cDao.insert(cDto2);
	/* 방문수 추가 */
	}else {
		int count = cDto.getCount();
		count++;
		CountDTO cDto2 = new CountDTO();
		cDto2.setVisitDate(date);
		cDto2.setCount(count);
		cDao.Update(cDto2);
	}
	
}
/* 방문했던 사람일때 */
else if(session.getAttribute("visit")!=null) {
	
}
%>

</body>
</html>