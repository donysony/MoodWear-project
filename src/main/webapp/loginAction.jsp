<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="member" class="member.Member" scope="page"/>
<jsp:setProperty name = "member" property="member_id"/>
<jsp:setProperty name = "member" property="member_pw"/>

	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		if(userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
			
		}
		String pwd = request.getParameter("pw");
		String id = request.getParameter("id");
		String msg = "로그인 성공";
		String url = "main.jsp";
		
		MemberDAO memberDAO = new MemberDAO();
		int result = memberDAO.login(member.getMember_id(), member.getMember_pw());
		if(result ==1){
			session.setAttribute("userID", member.getMember_id());  //해당 사용자에게 세션부여
 		}else if(result ==0){
			msg ="비밀번호가 틀립니다";
			url="login.jsp";
		}else if(result==-1){
			msg="존재하지 않는 아이디입니다";
			url="login.jsp";
		}else if(result == -2){
			msg ="데이터베이스 오류가 발생했습니다";
			url="login.jsp";
			}
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Contnent-Type" content="text/html" charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" href="css/style.css">
    <script>
    alert("<%=msg%>");
    location.href="<%=url%>";
    </script>
</head>
<body>

</body>
</html>