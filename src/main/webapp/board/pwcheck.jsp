<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
    
    <%
	request.setCharacterEncoding("UTF-8");
    int board_num = Integer.parseInt(request.getParameter("board_num"));
    System.out.println("/pwcheck/");
    BoardDAO boardDAO = new BoardDAO();
    String board_pw = boardDAO.getPw(board_num);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/문의확인.css">
<script type="text/javascript">

function checkPw(pw, num){
	if(document.checkFrm.pw.value==""){
		alert("비밀번호를 입력하세요");
		document.checkFrm.pw.focus();
		return ;
	}else{
		if(document.checkFrm.pw.value == pw){
			alert("확인되었습니다");
			document.checkFrm.action="inquiry.jsp";
			document.checkFrm.submit();
		}else if(document.checkFrm.pw.value != pw){
			alert("비밀번호가 다릅니다");
			document.checkFrm.pw.focus();
			return ;
		}
	}
}
</script>
</head>
<body>
<header></header>
    <section>
        <article class="inquiry_article">
            <div class="tablediv">
                    <h1>1:1문의</h1>
                    <hr>
                <form action="pwcheck.jsp" method="post" name="checkFrm">
                <table class="inquirytable">
                    <tr class="explain">
                        <td>
                        <p class="ex">이 글은 비밀글입니다</p>
                        <p class="ex">비밀번호를 입력해주세요</p>
                    </td>
                    </tr>
                    <tr >
                        <td id="password">비밀번호 &emsp;<input type="password" id="pw" name="pw"> &emsp;<button type="button" id="check" onClick="javascript:checkPw('<%=board_pw %>')">확인</button></td>
                    </tr>
                </table>
            <div class="buttondiv">    
                <button type="button" id="list" onclick="location.href='boardlist.jsp'">목록보기</button>
                <input type="hidden" name="board_num" value="<%=board_num%>">  <!-- post방식으로 게시글번호와 비밀번호가 url에 보이지 않도록 hidden으로 감추어 값을 넘김 -->
                <input type="hidden" name="board_pw" value="<%=board_pw%>">
                
            </div>
			</form>
            </div>
        </article>
    </section>
    <footer></footer>
</body>
</html>