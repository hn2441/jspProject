<%@page import="bean.AdvDTO"%>
<%@page import="bean.AdvDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		//post방식으로 받아올때 쓰는 아이...
			request.setCharacterEncoding("UTF-8");
		
			//넘어온 값 받아오기
			String no = request.getParameter("no");
			int adno=0;
			if(no!=null){
		adno = Integer.parseInt(no);
			}else{
	    		adno = Integer.parseInt(request.getParameter("adno"));
	    	}
			String sid = (String)session.getAttribute("id");
			String title = request.getParameter("title");
			String price = request.getParameter("price");
			String content = request.getParameter("content");
			String img = request.getParameter("img");
			
			AdvDAO adao = new AdvDAO();
			AdvDTO adto = new AdvDTO(sid,title,price,content,img);
			adto.setNo(adno);
			
			int rs = adao.updateAdv(adto);
			if(rs==1){
			/*업데이트 성공시 판매글 화면으로 이동 */
		response.sendRedirect("adv.jsp?adno="+adno);
			}else{
			/* 업데이트 실패시 판매글 수정 화면으로 돌아감 */
		response.sendRedirect("saleEditor_update.jsp?adno="+adno);
			}
	%>