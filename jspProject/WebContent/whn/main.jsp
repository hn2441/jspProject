<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	메인페이지가 없어서 임시로 만들어놓은 페이지 입니다.
	링크 부분만 가져가서 연결하면 됩니다.



 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	boolean b = true;
	String b1 = null;
		if(b){
			b1="판매자";
		}else{
			b1="구매자";
		}
	session.removeAttribute("id");
	session.setAttribute("id", "m110"); //로그인 처리 하면 지우는 부분
	session.setAttribute("category", b1);
	int adno = 1; //adv테이블에서 가지고 오려면 필요한 부분
	%>
	id : <%=session.getAttribute("id") %><br>
	adno : <%=adno %><br>
	
	
	<!-- 메인과 연결되는 부분 -->
	<a href="test.jsp?adno=<%=adno%>">테스트</a>
	<a href="adv.jsp?adno=<%=adno%>">판매글</a>
	<a href="advSidList.jsp?nowPage=1">판매글 리스트</a>
	<a href="cart.jsp">찜하기</a>
	<a href="saleEditor_insert.jsp">판매글쓰기</a>
</body>
</html>