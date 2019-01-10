<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@page import= "java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
					<div id="logo">
						<form action="search.jsp">
							<input type="text" name="search" id="search" style="width: 500px; margin: auto;"><br>
							<input type="submit" value="검색">
						</form>
					</div>

					<!-- Nav: 사이트에서 주요한 네비게이션 역할을 하는 링크 그룹을 담을 때 사용 -->
						
						<nav id="nav">
							<ul>
								<li class="current"><a href="main.jsp">홈</a></li>
								<li><a href="#">판매</a></li>
								<li><a href="left-sidebar.html">구매</a></li>
								<li><a href="right-sidebar.html">고객 센터</a></li>
							</ul>
						</nav>
						
						<ul id="member">
							<li><a href="#"><span> </span>로그인</a></li>
							<li><a href="#">회원가입</a></li>
						</ul>

				</section>
		
		<section id="highlights" class="wrapper style3">
		
		
		
		<%
			String title = request.getParameter("title");

			AdvDAO dao = new AdvDAO();
			AdvDTO dto = dao.select(title);
			
			String sTitle = dto.getTitle();
			String sImg = dto.getImg();
			String sPrice = dto.getPrice();
			String imgUrl = null;

	 		Cookie cTitle = new Cookie("title", sTitle);
	 		Cookie cImg = new Cookie("img", URLEncoder.encode(sImg, "UTF-8"));
	 		Cookie cPrice = new Cookie("price", sPrice);

			response.addCookie(cTitle);
			response.addCookie(cImg);
			response.addCookie(cPrice); 
			
			Cookie[] cookies = request.getCookies();
			
			if(cookies != null) {
				for(int i =0; i < cookies.length; i++) {
					if(cookies[i].getName().equals("title")) {
		%>
						<div id="recent">
						<table id="recentTable">
							<tr height="25">
								<td >최근 본 상품</td>
							</tr>
							<tr height="25">
								<td><a href="product.jsp?title=<%= dto.getTitle() %>"><%= cookies[i].getValue() %></a></td>
							</tr>
		<% 
					}
					if(cookies[i].getName().equals("img")) {
						
		%>
							<tr height="130">
								<td>
								<a href="product.jsp?title=<%= dto.getTitle() %>">
								<img src="<%= URLDecoder.decode(cookies[i].getValue(), "UTF-8") %>" height="120" width="180"></a></td>
							</tr>
		<% 
					}
					if(cookies[i].getName().equals("price")) {
		%>
							<tr height="25">
								<td><a href="product.jsp?title=<%= dto.getTitle() %>"><%= cookies[i].getValue() %></a></td>
							</tr>
						</table>
						</div>
		<% 					
					}
				}
			}
			
		%>
		
		<%= dto %>
		
		
		</section>		
	</div>

				
	</body>
</html>