<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*"%>
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
					<input type="text" size="50" name="search"> <input
						type="submit" value="검색">
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
		
		AdvDTO dto = new AdvDTO();
		AdvDAO dao = new AdvDAO();
		
		// 경로 지정
		String uploadPath = request.getRealPath("images\\productImg");

			int size = 10 * 1024 * 1024;		
			;

			try {
				MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", 
						new DefaultFileRenamePolicy());
			
				dto.setNo(Integer.parseInt(multi.getParameter("no")));
				dto.setSid(multi.getParameter("sid"));
				dto.setTitle(multi.getParameter("title"));
				dto.setPrice(multi.getParameter("price"));
				dto.setContent(multi.getParameter("content"));
				
				Enumeration files = multi.getFileNames();
				String file = (String) files.nextElement();
				dto.setImg(multi.getFilesystemName(file));
				
				dao.insertAdv(dto);

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
		
		<%= dto %>

</body>
</html>