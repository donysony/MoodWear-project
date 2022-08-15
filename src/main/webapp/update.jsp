<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter" %>
<%@page import="board.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품문의</title>

    <link rel="stylesheet" href="css/상품문의.css">
</head>
<body>
    <header>
		<jsp:include page="header.jsp"/>    
    </header>
    <%
	//현재 세션상태 체크
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	//로그인한 사람만 글을 쓸 수 있도록함
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
		
	}
	int board_num=0;
	if(request.getParameter("board_num") != null){
		board_num = Integer.parseInt(request.getParameter("board_num"));
	}
	if(board_num == 0){
		PrintWriter script = response.getWriter();
		script.print("<script>");
		script.print("alert('유효하지 않은 글입니다')");
		script.print("location.href='board.jsp'");
		script.print("</script>");
	}
	Board board = new BoardDAO().getBoard(board_num);
	if(!userID.equals(board.getBoard_member_id())){
		PrintWriter script = response.getWriter();
		script.print("<script>");
		script.print("alert('권한이 없습니다')");
		script.print("location.href='board.jsp'");
		script.print("</script>");
		
	}
    %>
 <section>
        <article class="inquiry_article">
                <form action="updateAction.jsp" method="post">
                    <h2>1:1문의</h2>
            <table class="inquirytable">
                    <tr class="info">
                        <td class="headtitle">비밀번호</td>
                        <td><input type="password" name="board_pw" id="" required></td>
                    </tr>
                    <tr class="title">
                        <td class="headtitle">제목</td>
                        <td><input type="text" maxlength="50" name="board_title" value="<%=board.getBoard_title()%>"></td>
                    </tr>
                    <tr class="contents">
                        <td class="headtitle">내용</td>
                        <td ><textarea maxlength="2048" name="board_content" ><%=board.getBoard_content()%></textarea></td>
                        
                    </tr>

                </table>
            <div class="buttondiv">
                <input type="submit" id="registration" value="수정하기"> &emsp;
                <button type="button" id="list" onclick="location.href='boardlist.jsp'">목록보기</button>
            </div>
            </form>
        </article>
    </section>
    <footer>

    </footer>
</body>
</html>