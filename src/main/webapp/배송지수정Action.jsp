<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="member.MemberDAO" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="address" class="member.Address"/>
<jsp:useBean id="memberDAO" class="member.MemberDAO"/>
<jsp:setProperty property="*" name="address"/>
<% 
	String phone =null;
	String userID = null;
	
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}

	//전화번호를 쪼개서 받아오기 때문에 합쳐줘야함
	if(request.getParameter("mPhone1") != null){
		if(request.getParameter("mPhone2") != null){
			if(request.getParameter("mPhone3") != null){
				//글 이어붙이기 방법 '+'사용'
				phone = request.getParameter("mPhone1")+request.getParameter("mPhone2")+request.getParameter("mPhone3");
			}
		}
	}
		
	int address_num = 0; 
	if(request.getParameter("address_num") != null){
		address_num = Integer.parseInt(request.getParameter("address_num"));
	}
	
	boolean update = memberDAO.updateAddress(address, userID, phone);
	String msg ="수정에 실패하였습니다";
	String url ="배송지수정.jsp"; 
	if(update){
		msg = "수정되었습니다";
		url ="배송지수정.jsp?address_num="+address_num;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 수정</title>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
</head>
<body>

</body>
</html>