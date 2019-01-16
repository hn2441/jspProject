<%@page import="bean.*"%>vDAO"%>
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

		<%
		AdvDTO dto = new AdvDTO();
		AdvDAO dao = new AdvDAO();
		
		// 경로 지정
		String uploadPath = request.getRealPath("images\\productImg");

			int size = 10 * 1024 * 1024;		

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