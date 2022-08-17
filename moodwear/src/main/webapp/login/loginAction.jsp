<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="admin.AdminDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
 request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="admin" class="admin.Admin" scope="page" />
<jsp:setProperty name="admin" property="admin_id" />
<jsp:setProperty name="admin" property="admin_pw" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	AdminDAO AdminDAO = new AdminDAO();
			int result = AdminDAO.login(admin.getAdmin_id(), admin.getAdmin_pw());
			if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인에 성공하였습니다')");
		//script.println("location.href='main.jsp'");
		script.println("</script>");
			}
			else if (result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
			}
			else if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>"); 
			}
			else if (result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
			}
	%>
</body>
</html>