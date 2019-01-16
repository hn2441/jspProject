<%@page import="java.awt.Window"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="bean.*"%>
<%@page import= "java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<!-- 자동 새로 고침 -->
		<script type="text/javascript">
			function refresh() {
				if (self.name != 'reload') {
					self.name = 'reload';
				   	self.location.reload(true);
				}
				else self.name = ''; 
			}
		
		</script>
	</head>
	
	<body onload="refresh()">
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
								<li><a href="#">" "</a></li>
								<li><a href="#">" "</a></li>
								<li><a href="#">찾아 오시는 길</a></li>
								<li><a href="#">고객 센터</a></li>
							</ul>
						</nav>
						
					<!-- 세션 값 불러오기 -->
					<% 
							if(session.getAttribute("id") == null) {
					%>
						<ul id="member">
								<li><a href="#">로그인</a></li> <br>
								<li><a href="#">회원가입</a></li>
						</ul>	
					<% 
						} else {
					%>
						<ul id="member">
							<li><a href="#"><%= session.getAttribute("id") %></a></li> <br>
							<li><a href="#"><%= session.getAttribute("category") %></a></li>
						</ul>
					<% 	
						} /* end 세션 등록 */
				%>
				</section>
		
		<section id="highlights" class="wrapper style3">
				
		<% 
			/* 상품 쿠키 등록 */
			int no = Integer.parseInt(request.getParameter("no"));
			
			AdvDAO dao = new AdvDAO();
			AdvDTO dto = dao.select(no);
			
			String product = dto.getTitle();
			String content = dto.getImg();
			
	 		Cookie cProduct = new Cookie(URLEncoder.encode(product, "UTF-8"), URLEncoder.encode(content, "UTF-8"));
			response.addCookie(cProduct);
		%>
		
		<!-- 상품 정보가 제대로 출력되는지 확인해 보기 위해 추가한 문장 -->
		<%= dto %>
		
				<div id="recent">
					<table id="recentTable">
						<tr height="25">
							<td>최근 본 상품</td>
						</tr>
		<% 
			Cookie[] cookies = request.getCookies();
			for(int i = 0; i < cookies.length; i++) {
				if(! cookies[i].getName().equals("JSESSIONID")) {
					/* 쿠키가 4개 이상 존재시 첫 번째 상품의 쿠키 삭제 */
					if(cookies.length > 4) {
						cookies[1].setMaxAge(0);
						response.addCookie(cookies[1]);
					}
					
			/* 상품이름으로 DB를 검색하여  no 값을 가져옴 */
			String title = URLDecoder.decode(cookies[i].getName(), "UTF-8");
			AdvDTO dto1 = dao.selectTitle(title);
		%>
						<tr height="25">
							<td><h3><a href="product.jsp?no=<%= dto1.getNo() %>"><%= URLDecoder.decode(cookies[i].getName(), "UTF-8") %></a></h3></td>
						</tr>
						<tr height="130">
							<td><a href="product.jsp?no=<%= dto1.getNo() %>"><img src="<%= URLDecoder.decode(cookies[i].getValue(), "UTF-8") %>" height="120" width="180"></a></td>
						</tr>
					</table>
		<%
				}					

			}		
		%>
					</div> <!-- end 상품 쿠키 등록  -->
		</section>		
	</div>

				
	</body>
</html>