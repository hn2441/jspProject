<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>판매자 게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	
	<body class="no-sidebar is-preload" style="color:black">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1>판매자페이지</h1>
							<p>궁금하신 점은 게시판에 글을 남겨주세요.</p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>
									<a href="#">Dropdown</a>
									<ul>
										<li><a href="#">Lorem ipsum</a></li>
										<li><a href="#">Magna veroeros</a></li>
										<li><a href="#">Etiam nisl</a></li>
										<li>
											<a href="#">Sed consequat</a>
											<ul>
												<li><a href="#">Lorem dolor</a></li>
												<li><a href="#">Amet consequat</a></li>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam nisl</a></li>
												<li><a href="#">Sed feugiat</a></li>
											</ul>
										</li>
										<li><a href="#">Nisl tempus</a></li>
									</ul>
								</li>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li><a href="right-sidebar.html">Right Sidebar</a></li>
								<li class="current"><a href="no-sidebar.html">Login</a></li>
							</ul>
						</nav>

				</section>

			<!-- Main -->
				<div id="main" class="wrapper style2">
					<%
						String id = null;
						if(session.getAttribute("id") != null){
							id = (String)session.getAttribute("id");
						}
					%>
					<div class="title">게시판</div> 
					<div class="container">
					<div style="text-align:center;">
						<table class = "bbs">
						<!-- <colgroup>
							<col width = "100">
							<col width = "500">
							<col width = "100">
							<col width = "200">
							<col width = "50">
						</colgroup> -->
							 <tr align ="center">
							 	<td width="150"><strong>번&nbsp;&nbsp;&nbsp;호</strong></td> 
								<td width="200"><strong>제&nbsp;&nbsp;&nbsp;목</strong></td>
								<td width="150"><strong>글&nbsp;쓴&nbsp;이&nbsp;</strong></td>
								<td width="100"><strong>날&nbsp;&nbsp;&nbsp;짜</strong></td>
								<td width="100"><strong>조회수</td>
							</tr>
							
						<%	
							response.setHeader("Refresh", "10");
							BBSDAO dao = new BBSDAO();
							ArrayList<BBSDTO> list = dao.selectAll();
							BBSDTO dto = null;
							
							for(int i = 0; i < list.size(); i++){
								dto = list.get(i);
						%>
							<tr>
								<td><%= dto.getNum()%></td>
								<td><a href= "bbsShow.jsp?title=<%= dto.getTitle()%>"><%= dto.getTitle()%></a></td>
								<td><%= dto.getId()%></td>
								<td><%= dto.getDate()%></td>
								<td><%= dto.getView()%></td>
							</tr>
						
						<%		
							}
						%>
					</table>
					<button type = "button" onclick="location.href='BBSinput.jsp' ">글쓰기</button>
					<button type = "button">삭제</button>
					</div>
					</div>
				</div>
			</div>

	</body>
</html>