<%@page import="bean.ServiceDTO"%>
<%@page import="bean.ServiceDAO"%>
<%@page import="java.util.ArrayList"%>
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
<title>Right Sidebar - Escape Velocity by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
</script>
<title>Insert title here</title>
</head>
<script type="text/javascript">

</script>
<style type="text/css">
a, a:hover {
	color: #000000;
	text-decoration: name;
}
/*글자에 검은바탕으로 해서  마우스를 갖다대면 나타나게 하는 css이다.*/
</style>
<body class="right-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapper">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="#">고객센터 게시판 리스트</a>
				</h1>
			</div>

			<!-- Nav: 사이트에서 주요한 네비게이션 역할을 하는 링크 그룹을 담을 때 사용 -->
                  
                  <nav id="nav">
                     <ul accesskey="" class="">
                        <li class="" accesskey=""><a href="index.jsp">홈</a></li>
                        <li accesskey="" class=""><a href="idCheck.jsp?p=m">마이페이지</a></li>
                        <li accesskey="" class=""><a href="idCheck.jsp?p=c">찜 목록</a></li>
                        <li accesskey="" class=""><a href="googleMap.jsp">찾아 오시는 길</a></li>
                        <li accesskey="" class=""><a href="FAQ.html">고객 센터</a></li>
                     </ul>
                  </nav>
		</section>

		<jsp:useBean id="dao" class="bean.ServiceDAO" />
	<%
				/*serviceDTO에서 DAO의  selectAll()에서 리스트를 보여준다.  */
		ArrayList<bean.ServiceDTO>list=dao.selectAll();
	%>
	<table class="table table-striped"
		style="text-align: center; border: 1px solid #ddddd">
		<thead>
			<tr class="table-dark text-dark">
				<th style="background-color: #eeeee; text-align: center;">순서</th>
				<th style="background-color: #eeeee; text-align: center;">제목</th>
				<th style="background-color: #eeeee; text-align: center;">이메일</th>
				<th style="background-color: #eeeee; text-align: center;">작성일</th>



			</tr>
		</thead>
		<%
		/*ServiceDTO에서 list에서 데이터의 종류별로 꺼내온다.*/
		for(int i=0;i<list.size();i++){
		  bean.ServiceDTO dto=list.get(i);
	%>
		<tr>
			<td><a href="boardselect.jsp?title=<%= dto.getTitle() %>"> <!-- boardselect.jsp데이터베이스의 값을 순서을 눌렀을시 그값을 가져온다.-->
					<%= dto.getBoardID()%></a></td>
			<td><%= dto.getTitle() %></td>
			<td><%=dto.getEmail() %></td>
			<td><%=dto.getTm()%></td>

		</tr>

		<%
	  }
	%>

	</table>

	<hr align="right">
	<a href="boardInsert.html" class="btn btn-primary">게시글등록</a>
					

		
		

	

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