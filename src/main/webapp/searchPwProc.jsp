<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String phone = request.getParameter("phone");
	
	
	
	
	MemberDAO memberDAO = new MemberDAO();
	String memberPw = memberDAO.getMemberPw(id, phone);
	
	if(memberPw == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('일치하는 비밀번호가 없습니다')");
		script.println("history.back()");
		script.println("</script>");
	}
	
	else{
		%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
<title>searchID</title>
</head>
<body>
    <header></header>
    <section>
        <article class="article1">
        <form action="searchIDProc.jsp" method="post" name="searchID">
            <div>
            <h1>비밀번호 찾기</h1>
            <p class="ex">찾으시는 비밀번호는 <%=memberPw %>입니다</p>

            <p>
                <input type="button" value="로그인 하러가기" class="box3" onclick="location.href='login.jsp'">
            </p>
        </div>
        </form>
        </article>
    </section>
    <footer></footer>





		<%
	}
%>
</body>
</html>