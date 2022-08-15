<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inquiry</title>
    <link rel="stylesheet" href="css/inquiry.css">
</head>
<body>
	<%
	System.out.println("/inquiry/");
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String)session.getAttribute("userID");
		}
		//board_num 초기화
		int board_num = 0;
		//'board_num'라는 데이터가 넘어온 것이 존재한다면 캐스팅하여 변수에 담음
		if(request.getParameter("board_num") != null){
			board_num = Integer.parseInt(request.getParameter("board_num"));
		}
		//넘어온 데이터가 없다면
		if(board_num == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다')");
			script.println("location.href='boardlist.jsp'");
			script.println("</script>");
		}
		
		//유효한 글이라면 구체적인 정보를 'board'라는 인스턴스에 담는다
		Board board = new BoardDAO().getBoard(board_num);
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.upCount(board_num);
	%>


    <header></header>
    <section>
        <article class="article_notice" >
            <div>
            <h1>1:1문의</h1>
            <table class="tablenotice">
                <tr>
                    <th class="title">제목</th>
                    <td class="bordertd">&emsp; <%=board.getBoard_title() %> <img src="img/ei_lock.png" alt="잠금"></td>
                </tr>
                <tr>
                    <th class="title">작성자</th>
                    <td class="bordertd"> &emsp; <%=board.getBoard_member_id() %></td>
                </tr>
                <tr class="date">
                    <td colspan="2" class="bordertd"><b>작성일</b> : <%=board.getBoard_regdate() %> <b>조회수</b> : <%=board.getBoard_views() %></td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <%=board.getBoard_content() %>
                    </td>
                </tr>
                <tr>
                    <td id="bottomtr" class="bordertd" colspan="2"></td>
                </tr>
                <tr class="bordertd"></tr>
                <tr class="answer">
                    <th class="title" >답변글</th>
                    <td >&emsp;안녕하세요 고객님 mood wear입니다<br>
                        &emsp;저희가 보유한 재고는 없습니다 <br>
                        &emsp;죄송합니다<br>
                        </td>
                </tr>
            </table>
            
            
            <button type="button" id="Tolist" onclick="location.href='boardlist.jsp'">목록보기</button>
            <%
            	if(userID != null && userID.equals(board.getBoard_member_id())){
            %>
            <a href="update.jsp?board_num=<%=board_num%>">수정</a>
            <a href="deleteAction.jsp?board_num=<%=board_num%>">삭제</a>
            <%
            }
            %>
        </div>
            <table class="next">
                <tr>
                    <th class="nextcontent">&emsp;다음글</th>
                    <td id="nextinquriy"> &emsp;문의합니다 </td>
                </tr>
                <tr>
                    <th class="nextcontent">&emsp;이전글</th>
                    <td id="preinquriy"> &emsp;문의합니다 </td>
                </tr>
            </table>



        </article>
    </section>
    <footer></footer>
</body>
</html>