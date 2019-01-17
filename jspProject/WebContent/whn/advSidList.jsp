<%@page import="java.util.ArrayList"%>
<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	판매글 리스트 페이지. 판매자 마이페이지와 메인화면에서 넘어옴.
	로그인 한 판매자 본인의 판매글들을 띄워줍니다.
-->
<html>
<head>
<title>장바구니</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
</head>
<body class="no-sidebar is-preload">
	<%	//판매글 리스트에 올릴 정보
		AdvDAO adao = new AdvDAO();
		AdvDTO adto = null;
		//판매글 개수
		ArrayList<AdvDTO> list = adao.selectMyAdv((String)session.getAttribute("id"));
		int count = list.size();
		//판매글을 4개씩 나눠서 페이징 - 4로 나눠 남는 판매글이 있으면 1 추가
		int pageCount = 0;
		if(count%4 == 0){
			pageCount = count/4;
		}else{
			pageCount = (count/4) + 1;
		}
		//지금 페이지값 받아오기
		int nowPage = Integer.parseInt(request.getParameter("nowPage"));
	%>
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapper">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="index.html">내 판매글 목록</a>
				</h1>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="#">Dropdown</a>
						<ul>
							<li><a href="#">Lorem ipsum</a></li>
							<li><a href="#">Magna veroeros</a></li>
							<li><a href="#">Etiam nisl</a></li>
							<li><a href="#">Sed consequat</a>
								<ul>
									<li><a href="#">Lorem dolor</a></li>
									<li><a href="#">Amet consequat</a></li>
									<li><a href="#">Magna phasellus</a></li>
									<li><a href="#">Etiam nisl</a></li>
									<li><a href="#">Sed feugiat</a></li>
								</ul></li>
							<li><a href="#">Nisl tempus</a></li>
						</ul></li>
					<li><a href="left-sidebar.html">Left Sidebar</a></li>
					<li><a href="right-sidebar.html">Right Sidebar</a></li>
					<li class="current"><a href="no-sidebar.html">No Sidebar</a></li>
				</ul>
			</nav>

		</section>

		<!-- Main -->
		<div id="main" class="wrapper style2">
			<div class="title">No Sidebar</div>
			<div class="container">

				<!-- Content -->
				<div id="content">
					<article class="box post">
						<header class="style1">
							<h2>
								<%=session.getAttribute("id")%>님의 판매글 리스트<br
									class="mobile-hide" />
								<a href="advSidList.jsp?nowPage=1">판매글 쓰기</a>
							</h2>
						</header>
						<div class="row gtr-150">
						<%
							// 판매자의 판매글 리스트 출력
							// start는 지금 페이지의 첫번째 번호
							// end는 지금 페이지의 마지막 인덱스
							int start = (nowPage-1)*4;
							int end = nowPage*4;
							if((pageCount == nowPage) && (count%4 != 0)){
								end = start + count%4;
							}
							for (int i=start;i<end; i++) {
								adto = list.get(i);
						%>
							<div class="col-6 col-12-small">
								<section class="box">
									<header>
										<h2><%=adto.getTitle()%></h2>
									</header>
									<a href="#" class="image featured"> 
										<img src="<%=adto.getImg()%>" alt=""/>
									</a>
									<p><%=adto.getPrice()%></p>
									<button class="button style1" onclick="location.href='adv.jsp?no=<%=adto.getNo()%>'">
									글 보러가기</button>
								</section>
							</div>
							<%}%>
							</div>
					</article>
					<div align="center" style="font-size: 18px; padding: 5%; height: 10%'">
					<%	//지금페이지가 1이 아닐경우만 '이전'을 띄워주고, 지금 페이지가 마지막 페이지가 아닐 경우에만 '다음'을 띄워줌
						if(nowPage>1){
					%>
							<a href="advSidList.jsp?nowPage=<%=nowPage-1%>">이전</a>
					<%	} %>
						&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
						<%=nowPage %>
						&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
					<%
						if(nowPage<pageCount){%>
						<a href="advSidList.jsp?nowPage=<%=nowPage+1%>">다음</a>
					<%	} %>
					</div>	

				</div>
			</div>
			</div>
		</div>

		<!-- Highlights -->
		<section id="highlights" class="wrapper style3">
			<div class="title">The Endorsements</div>
			<div class="container">
				<div class="row aln-center">
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="../images/pic02.jpg" alt="" /></a>
							<h3>
								<a href="#">Aliquam diam consequat</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="../images/pic03.jpg" alt="" /></a>
							<h3>
								<a href="#">Nisl adipiscing sed lorem</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="../images/pic04.jpg" alt="" /></a>
							<h3>
								<a href="#">Mattis tempus lorem</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</section>

		<!-- Footer -->
		<section id="footer" class="wrapper">
			<div class="title">The Rest Of It</div>
			<div class="container">
				<header class="style1">
					<h2>Ipsum sapien elementum portitor?</h2>
					<p>
						Sed turpis tortor, tincidunt sed ornare in metus porttitor mollis
						nunc in aliquet.<br /> Nam pharetra laoreet imperdiet volutpat
						etiam feugiat.
					</p>
				</header>
				<div class="row">
					<div class="col-6 col-12-medium">

						<!-- Contact Form -->
						<section>
							<form method="post" action="#">
								<div class="row gtr-50">
									<div class="col-6 col-12-small">
										<input type="text" name="name" id="contact-name"
											placeholder="Name" />
									</div>
									<div class="col-6 col-12-small">
										<input type="text" name="email" id="contact-email"
											placeholder="Email" />
									</div>
									<div class="col-12">
										<textarea name="message" id="contact-message"
											placeholder="Message" rows="4"></textarea>
									</div>
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" class="style1" value="Send" /></li>
											<li><input type="reset" class="style2" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>

					</div>
					<div class="col-6 col-12-medium">

						<!-- Contact -->
						<section class="feature-list small">
							<div class="row">
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-home">Mailing Address</h3>
										<p>
											Untitled Corp<br /> 1234 Somewhere Rd<br /> Nashville, TN
											00000
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-comment">Social</h3>
										<p>
											<a href="#">@untitled-corp</a><br /> <a href="#">linkedin.com/untitled</a><br />
											<a href="#">facebook.com/untitled</a>
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-envelope">Email</h3>
										<p>
											<a href="#">info@untitled.tld</a>
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-phone">Phone</h3>
										<p>(000) 555-0000</p>
									</section>
								</div>
							</div>
						</section>

					</div>
				</div>
				<div id="copyright">
					<ul>
						<li>&copy; Untitled.</li>
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</div>
		</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>

