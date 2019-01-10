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
								
		<%		
			String search = request.getParameter("search");
		%>
		
		<section id="highlights" class="wrapper style3">
			
			<div class="title"><h1>검색 결과 </h1></div>
			<h2>입력한 검색어: <%= search %> </h2>
			
			<%
			AdvDAO dao = new AdvDAO();
			ArrayList<AdvDTO> list = dao.search(search);
			AdvDTO dto = null;
			
			for(int i = 0; i < list.size(); i++) {
				dto = list.get(i);	
			%>
		
			<% 		
		
				if(dto.getTitle() == null) {
			%>			
				<h3>검색결과 없음</h3>
			<%			
				} else {
			%>
				<div class="container">
				<div style="float: left; margin-right: 70px;">
					<div>
						<section class="highlight">
							<h3 align="center"><a href="product.jsp?title=<%= dto.getTitle() %>"> 상품: <%= dto.getTitle() %></a></h3>
							<a href="product.jsp?title=<%= dto.getTitle() %>"><img src="<%= dto.getImg() %>" width="350" height="300"/></a>
							<h3 align="center"><a href="product.jsp?title=<%= dto.getTitle() %>"> 가격: <%= dto.getPrice() %></a></h3>
							<p></p>
						</section>
					</div>				
				</div>
				</div>
			<%
				}
				
		%>
			
		<% 
			}
			
			/* 최근 본 상품 목록 */
		
			Cookie[] cookies = request.getCookies();
			
			String title = null;
			
			if(cookies != null) {
				for(int i =0; i < cookies.length; i++) {
					if(cookies[i].getName().equals("title")) {
						title = cookies[i].getValue();
		%>
		
						<div id="recent">
						<table id="recentTable">
							<tr height="25">
								<td >최근 본 상품</td>
							</tr>
							<tr height="25">
								<td><a href="product.jsp?title=<%= title %>"><%= cookies[i].getValue() %></a></td>
							</tr>
		<% 
					}
					if(cookies[i].getName().equals("img")) {
						
		%>
							<tr height="130">
								<td>
									<a href="product.jsp?title=<%= title %>">
										<img src="<%= URLDecoder.decode(cookies[i].getValue(), "UTF-8") %>" height="120" width="180">
									</a>
								</td>
							</tr>
		<% 
					}
					if(cookies[i].getName().equals("price")) {
		%>
							<tr height="25">
								<td><a href="product.jsp?title=<%= title %>"><%= cookies[i].getValue() %></a></td>
							</tr>
						</table>
						</div>
		<% 					
					}
				}
			}
		%>	
					
		</section>		
	</div>
	</body>
</html>