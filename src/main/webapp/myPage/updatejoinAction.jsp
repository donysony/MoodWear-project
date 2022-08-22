<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="member.MemberDAO" %>
<% 
	request.setCharacterEncoding("utf-8");
	String pw = null;
	String email  = null;
	String phone=null;
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}
	if(request.getParameter("pw") != null){
	pw = request.getParameter("pw");		
	}
	if(request.getParameter("mPhone1") != null){
		if(request.getParameter("mPhone2") != null){
			if(request.getParameter("mPhone3") != null){
				//글 이어붙이기 방법 '+'사용'
				phone = request.getParameter("mPhone1")+request.getParameter("mPhone2")+request.getParameter("mPhone3");
				//글 이어붙이기 concat()사용
				//phone = request.getParameter("mPhone1").concat(request.getParameter("mPhone2")).concat(request.getParameter("mPhone3"));
			}
		}
	}
	if(request.getParameter("email1") != null){
		if(request.getParameter("email2") != null){
	email = request.getParameter("email1")+"@"+request.getParameter("email2");
		}
	}
	System.out.println(email);
	MemberDAO memberDAO = new MemberDAO();
	memberDAO.getMemberUpdate(userID, pw, email, phone);
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>updatejoin</title>
<script>
	alert("변경되었습니다");
	location.href="updatejoin.jsp";
</script>
</head>
<body>

</body>
</html>