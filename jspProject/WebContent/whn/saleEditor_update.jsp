<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>판매 입력 페이지 입니다.</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
#heart {
	position: relative;
	width: 25px;
	height: 22.5px;
}

#heart:before, #heart:after {
	position: absolute;
	content: "";
	left: 12.5px;
	top: 0px;
	width: 12.5px;
	height: 20px;
	background: #f98780;
	border-radius: 12.5px 12.5px 0 0;
	transform: rotate(-45deg);
	transform-origin: 0 100%
}

#heart:after {
	left: 0;
	transform: rotate(45deg);
	transform-origin: 100% 100%;
}

#heart:hover {
	background: #fcc8c4;
}
</style>

<link rel="stylesheet" href="../assets/css/main.css" />
<script type="text/javascript">
	function checkEmpty(){
		var title = document.getElementById("title").value;
		var price = document.getElementById("price").value;
		var content = document.getElementById("content").value;
		var img = document.getElementById("img").value;
		
		/* 빈칸 있을시 알림 띄워줌 */
		if(title=="" || price=="" || content=="" || img==""){
			alert("빈칸이 있습니다. 확인해주세요.");
			return false;
		}else{
			return true;
		}
	}
	</script>
</head>
<body class="right-sidebar is-preload">
	<%
	//원래 정보를 표에 올려주기 위해서 가져옴
	AdvDAO adao = new AdvDAO();
	AdvDTO adto = null;
	int adno = Integer.parseInt(request.getParameter("no"));
	
	adto = adao.selectAdv(adno);
%>
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapper">

			<!-- Logo -->
			<div id="logo"></div>

			<!-- Nav: 사이트에서 주요한 네비게이션 역할을 하는 링크 그룹을 담을 때 사용 -->

			<nav id="nav">
				<ul>
					<li class="current"><a href="main.jsp">홈</a></li>
					<li><a href="idCheck.jsp?p=m">마이페이지</a></li>
					<li><a href="idCheck.jsp?p=c">찜 목록</a></li>
					<li><a href="googleMap.html">찾아 오시는 길</a></li>
					<li><a href="FAQ.html">고객 센터</a></li>
					<li>|</li>
					<%
		            /* 로그인한 세션 값 확인 */
		               if(session.getAttribute("id") == null) {
		            %>
					<li><a href="loginPage.jsp">로그인</a></li>
					<% 
		               } else {
		            %>
					<li><a href="#"><%= session.getAttribute("id") %></a></li>
					<li><a href="logout.jsp">로그아웃</a></li>
					<%    
		               } /* end 로그인한 세션 값 확인 */
		            %>
				</ul>
			</nav>
			<div></div>
		</section>

		<!-- Main -->
		<section id="main" class="wrapper style2">
			<div class="title">Right Sidebar</div>
			<div class="container">
				<div class="row gtr-150">
					<div class="col-8 col-12-medium">

						<!-- Content -->
						<div id="content">
							<article class="box post">
								<header class="style1"> </header>
								<div class="row gtr-150">
									<div class="col-6 col-12-small">
										<form id="temp" method="post"
											action="saleEditor_update_ok.jsp">
											<table style="width: 200%">
												<tr>
													<td style="width: 2%">제</td>
													<td style="width: 2%;"></td>
													<td style="width: 2%;"></td>
													<td style="width: 2%;">목</td>
													<td style="width: 2%;"></td>
													<td><input type="text" id="title" name="title"
														value="<%=adto.getTitle()%>"></td>
												</tr>
												<tr>
													<td colspan="6" style="height: 20px"></td>
												</tr>
												<tr>
													<td style="width: 2%;">가</td>
													<td style="width: 2%;"></td>
													<td style="width: 2%;"></td>
													<td style="width: 2%;">격</td>
													<td style="width: 2%;"></td>
													<td><input type="text" id="price" name="price"
														value="<%=adto.getPrice()%>"></td>
												</tr>
												<tr>
													<td colspan="6" style="height: 20px"></td>
												</tr>
												<tr>
													<td style="width: 2%;">상</td>
													<td style="width: 2%;">세</td>
													<td style="width: 2%;">내</td>
													<td style="width: 2%;">용</td>
													<td style="width: 2%;"></td>
													<td><input type="text" id="content" name="content"
														style="height: 200px;" value="<%=adto.getContent()%>">
													</td>
												</tr>
												<tr>
													<td colspan="6" style="height: 20px"></td>
												</tr>
												<tr>
													<td style="width: 2%;">파</td>
													<td style="width: 2%;">일</td>
													<td style="width: 2%;">첨</td>
													<td style="width: 2%;">부</td>
													<td style="width: 2%;"></td>
													<td><input type="text" id="img" name="img"
														value="<%=adto.getImg()%>"></td>
												</tr>
												<tr>
													<td style="height: 70px"><input type="hidden"
														name="adno" value="<%=adto.getNo()%>"></td>
												</tr>
												<tr>
													<td colspan="6">
														<div align="center" style="width: 110%">
															<input type="submit" value="수정" class="button style1"
																onclick="return checkEmpty()"> <input
																type="reset" class="button style1">
														</div>
													</td>
												</tr>
											</table>
										</form>
									</div>
								</div>
							</article>
						</div>
					</div>
					<div class="col-4 col-12-medium">

						<!-- Sidebar -->
						<div id="sidebar">
							<section class="box">
								<header>
									<h2>네임카드</h2>
									<a href="#" id="heart"></a>
								</header>
							</section>
							<section class="box">
								<ul class="style2">
									<li>
										<article class="box post-excerpt">
											<a href="#" class="image left"><img
												src="../images/pic08.jpg" alt="" /></a>
											<h3>
												<a href="#">닉네임</a>
											</h3>
											<p>닉네임</p>
										</article>
									</li>
								</ul>
								<br> <a href="#" class="button style1">주문하기</a>
							</section>
						</div>
					</div>
				</div>
			</div>
		</section>
</body>
</html>
