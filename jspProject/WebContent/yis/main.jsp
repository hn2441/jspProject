<%@page import="java.util.ArrayList"%>
<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Escape Velocity by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
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
								<li><a href="input.jsp">로그인</a></li>
								<li><a href="left-sidebar.html">회원가입</a></li>
								<li><a href="right-sidebar.html">고객 센터</a></li>
							</ul>
						</nav>
						
						<ul id="member">
							<li><a href="#">로그인</a></li>
							<li><a href="#">회원가입</a></li>
						</ul>	
				</section>
	
			<!-- Highlights -->
				<section id="highlights" class="wrapper style3">
					<div class="title">The Endorsements</div>
					
					<!-- 최근 본 상품 목록 -->
					<% 
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

						Random ran = new Random();
						AdvDAO dao = new AdvDAO();
						ArrayList<AdvDTO> list = dao.number();

						int ranNum1=0;
						int ranNum2=0;
						int ranNum3=0;

						while(true) {
							ranNum1 = ran.nextInt(list.size()) + 1;
							ranNum2 = ran.nextInt(list.size()) + 1;
							ranNum3 = ran.nextInt(list.size()) + 1;
							
							if(ranNum1 != ranNum2 && ranNum2 != ranNum3 && ranNum1 != ranNum3) {
								break;
							}
						}
						
						AdvDTO ranlist1 = dao.randomPro(ranNum1);
						AdvDTO ranlist2 = dao.randomPro(ranNum2);
						AdvDTO ranlist3 = dao.randomPro(ranNum3);
					%>

					<div class="title">상 &nbsp; &nbsp; &nbsp; &nbsp; 품</div>
					<div class="container">
						<div class="row aln-center">
							<div class="col-4 col-12-medium">
								<section class="highlight">
									<h3 align="center"><a href="product.jsp?title=<%= ranlist1.getTitle() %>">상품: <%= ranlist1.getTitle() %></a></h3>
									<a href="product.jsp?title=<%= ranlist1.getTitle() %>" class="image featured"><img src="<%= ranlist1.getImg() %>" width="350" height="300"/></a>
									<h3 align="center"><a href="product.jsp?title=<%= ranlist1.getTitle() %>">가격: <%= ranlist1.getPrice() %></a></h3>
									<p></p>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section class="highlight">
									<h3 align="center"><a href="product.jsp?title=<%= ranlist2.getTitle() %>">상품: <%= ranlist2.getTitle() %></a></h3>
									<a href="product.jsp?title=<%= ranlist2.getTitle() %>" class="image featured"><img src="<%= ranlist2.getImg() %>" width="350" height="300"/></a>
									<h3 align="center"><a href="product.jsp?title=<%= ranlist2.getTitle() %>">가격: <%= ranlist2.getPrice() %></a></h3>
									<p></p>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section class="highlight">
									<h3 align="center"><a href="product.jsp?title=<%= ranlist3.getTitle() %>">상품: <%= ranlist3.getTitle() %></a></h3>
									<a href="product.jsp?title=<%= ranlist3.getTitle() %>" class="image featured"><img src="<%= ranlist3.getImg() %>" width="350" height="300"/></a>
									<h3 align="center"><a href="product.jsp?title=<%= ranlist3.getTitle() %>">가격: <%= ranlist3.getPrice() %></a></h3>
									<p></p>
								</section>
							</div>
						</div>
					</div>
				</section>
		</div>
	</body>
</html>