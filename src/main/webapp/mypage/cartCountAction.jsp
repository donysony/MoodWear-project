<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberDAO" class="member.MemberDAO"/>
<% request.setCharacterEncoding("utf-8"); %>
    
<%
	int cart_num = 0;
	int quantity = 0;
	if(request.getParameter("cart_num") != null){
		cart_num = Integer.parseInt(request.getParameter("cart_num"));
	}
	if(request.getParameter("quantity") != null){
		quantity = Integer.parseInt(request.getParameter("quantity")) ;
	}
	
	int result = memberDAO.getCartQuantityChange(cart_num, quantity);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니count</title>
</head>
<body>

</body>
</html>