<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.BBSDTO"%>
<%@page import="bean.BBSDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>등록한 글</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<script type="text/javascript">
		
 	function update() {
			var	title = document.getElementById("title").getAttribute("value");
			var	write = document.getElementById("write").getAttribute("value");
			var id = "1";
			var id2 = "1";
			var date = document.getElementById("date").getAttribute("value");
			var view = document.getElementById("view").getAttribute("value");
			var num = document.getElementById("num").getAttribute("value");
			
			location.href="bbsUpdate.jsp?&title=" + title + "&write=" + write + "&id=" + id + "&id2=" + id2 +"&date=" + date + "&view=" + view+ "&num=" + num;
			}
			</script>
			
			
	</head>
	<body class="no-sidebar is-preload" style="color:black">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1>당신이 쓴 글</h1>
							<p>일단 보겠습니다.</p>
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
					<div class="title">글 보기</div> 
					<div class="container">
					<div style="text-align:center;">
						<table class = "bbs">
						<%	
							Date now = new Date();
							SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
							String date = sf.format(now);
							
							String title = request.getParameter("title");
							String write = request.getParameter("write");
							String id = request.getParameter("id");
							String id2 = request.getParameter("id2");
							int view = request.getContentLength();
							
							
							BBSDAO dao = new BBSDAO();
							
							BBSDTO dto = dao.select(title); //정보
							BBSDTO dto2 = dao.select2(title); //날짜가져오기
							dao.update(title);
		
							
							
							
						%>
							<tr>
								<td style ="width: 20%;">글 번호</td>
								<td colspan="2" id="num" value="<%= dto.getNum() %>"><%= dto.getNum() %></td>
							</tr>
							<tr>
								<td style ="width: 20%;">제목</td>
								<td colspan="2" id="title" value="<%= dto.getTitle() %>"><%= dto.getTitle() %></td>
							</tr>
							<tr>
								<td style ="width: 20%;">작성자</td>
								<td colspan="2"><%= dto.getId() %></td>
							</tr>
							<tr>
								<td style ="width: 20%;">작성한 날짜</td>
								<td colspan="2" id="date" value ="<%= dto2.getDate() %>"><%= dto2.getDate() %></td>
							</tr>
							<tr>
								<td style ="width: 20%;">조회수</td>
								<td colspan="2" id="view" value="<%= dto.getView() %>"><%= dto.getView() %></td>
							</tr>
							<tr>
								<td style ="width: 20%;">작성한 글</td>
								<td colspan="2" id="write" value="<%= dto.getWrite() %>"><%= dto.getWrite() %></td>
							</tr>
					</table>
					<button type = "button" onclick="location.href='BBS.jsp' ">목록</button>
					<button type = "button">답글</button>
					<button type = "button" onclick="update();">수정</button>
					</div>			
					</div>
				</div>
			</div>

	</body>
</html>