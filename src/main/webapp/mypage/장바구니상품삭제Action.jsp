<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="memberDAO" class="member.MemberDAO"/>
<% request.setCharacterEncoding("utf-8"); %>
<%
	int cart_num = 0;
	if(request.getParameter("cart_num") != null){
	cart_num = Integer.parseInt(request.getParameter("cart_num"));
}
	int result = memberDAO.getCartDelete(cart_num);
	if(result != -1){
		%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	alert("삭제되었습니다");
	location.href="장바구니.jsp";
</script>
</head>
<body>

		<%
	}
%>
</body>
</html>