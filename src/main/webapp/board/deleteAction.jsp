<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardDAO" %>
<%@page import="java.io.PrintWriter" %>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="board" class="board.Board" scope="page"/>
<%
String title = request.getParameter("board_title");
String content = request.getParameter("board_content");
String pw = request.getParameter("board_pw");
int board_num = Integer.parseInt(request.getParameter("board_num"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

		
			//글 삭제 로직 수행
			BoardDAO boardDAO = new BoardDAO();
			int result = boardDAO.delete(board_num);
			//데이터베이스 오류인 경우
			if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글 수정에 실패했습니다')");
			script.println("history.back()");
			script.println("</script>");
			
			//글삭제가 정상적으로 실행되면 알림창 띄우고, 게시판 메인으로 이동
			}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('정상적으로 글이 삭제되었습니다')");
			script.println("location.href='boardlist.jsp'");
			script.println("</script>");
				
			}
		
	
%>
</body>
</html>