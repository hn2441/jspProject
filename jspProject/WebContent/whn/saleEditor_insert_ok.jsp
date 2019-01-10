<%@page import="bean.AdvDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>saleEditor_ok페이지</title>
</head>
<body>
	<%	
		//로그인 부분이랑 연결되면 삭제해야함
		session.setAttribute("id", "임시아이디");
		
	
		//post방식으로 넘기면서 필요한 인코딩
		request.setCharacterEncoding("UTF-8");
		//가져오기
		String sid = (String)session.getAttribute("id");
		String title = request.getParameter("title");
		String price11 = request.getParameter("price11");
		String price12 = request.getParameter("price12");
		String price21 = request.getParameter("price21");
		String price22 = request.getParameter("price22");
		String price = price11+"+"+price12+"-"+price21+"+"+price22;
		String content = request.getParameter("content");
		String img = request.getParameter("img");
		//price2번칸을 제외하고 빈칸 있을시 알림 띄우고 돌아감
		if(sid == null || sid.trim().equals("")||
			title == null || title.trim().equals("")||
			price11 == null || price11.trim().equals("")||
			price12 == null || price12.trim().equals("")||
			content == null || content.trim().equals("")||
			img == null || img.trim().equals("")
				){ %>
		<script type="text/javascript">
			alert("빈칸이 있습니다. 확인해주세요.")
			history.back();
		</script>		
	<%
		return;
		}else{
		
		//아래는 DB연동 해야하는 부분..! 값이 들어오는지만 확인한상태!
	%>	
				
		sid : <%=sid %>		
		title : <%=title %>		
		price : <%=price %>		
		content : <%=content %>		
		img : <%=img %>		
			
		완료
	<%	
		}	
		
	%>
</body>
</html>