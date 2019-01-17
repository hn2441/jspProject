<%@page import="bean.ServiceDTO"%>
<%@page import="bean.ServiceDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">

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
<body>
<h1 align="center">고객센터 상담 목록 리스트</h1>
<hr>
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

	<%--  <%
	    	if(pageNumber !=1){
	    %>
	    	<a href="selectAll.jsp?pageNumber=<%=pageNumber -1%>" class="btn btn-sucess btn-arraw-left">이전</a> 	
	    <%
	    	}if(ServiceDAO.nex
	    %>
	    	<a href="selectAll.jsp?pageNumber=<%=pageNumber +1%>" class="btn btn-sucess btn-arraw-left">다음</a> 	
	    <%
			}
	    %>  --%>



	<hr align="right">
	<a href="boardInsert.html" class="btn btn-primary">게시글등록</a>
	</h1>
	<!-- <h1 style="display: inline-block;"><span class="badge badge-pill badge-warning"><a href="#" id="prepage">1</a></span>	
<h1 style="display: inline-block;"><span class="badge badge-pill badge-warning"><a href="#" id="nowpage">2</a></span>	
<h1 style="display: inline-block;"><span class="badge badge-pill badge-warning"><a href="#" id="nextpage">3</a></span> -->
	<hr>



</body>
</html>
