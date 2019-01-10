<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>판매자 게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<script type="text/javascript">
		
		function input() {
			var	title = document.getElementById("title").value;
			var	write = document.getElementById("write").value;
			var id = "1";
			var id2 = "1";
			var date = null;
			var view = null;
			/* document.write(title);
			document.write(write); */
			
			location.href="bbsSave.jsp?&title=" + title + "&write=" + write + "&id=" + id + "&id2=" + id2 +"&date=" + date + "&view=" + view;
			
			alert('등록완료');
		}
		
		</script>
		
	</head>
	<body class="no-sidebar is-preload" style="color:black">
		<form action="BBS.jsp">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1>판매자페이지</h1>
							<p>질문하고자하는 내용을 적어주세요.성실하게 답변해 드립니다.</p>
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
					<div class="title">게시판</div> 
					<div class="container">
					<div style="text-align:center;">
						<table class = "bbs">
			<center>
			<input type= "text" name="title" value="제목" size = "90" id="title"><br>
			<textarea rows="15" cols="80" name="write" id="write">
			글 작성
			</textarea><br>
					<button type = "button" onclick="input();">등록</button>
					<button type = "button" onclick="location.href='BBS.jsp' ">취소</button>
			</center>
		</div>
		</div>
	</div>

</div>
</form>
	</body>
</html>