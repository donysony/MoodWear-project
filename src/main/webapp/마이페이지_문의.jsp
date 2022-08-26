<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.*" %>
<%@page import="member.*" %>
<%@page import="java.util.*" %>

<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	int pageNumber =50;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>1:1문의내역</title>
    <link rel="stylesheet" href="css/마이페이지_문의.css">
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="aside.jsp"/>
    </aside>
    <section>
        <article>
            <h2>1:1 문의내역</h2>
            <hr>
                <form action="update.jsp" method="get" >
            <table class="shipping_address">
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성일</th>
                        <th>답변여부</th>
                        <th>수정</th>
                    </tr>
                    <tr>
                        <td colspan="6"></td>
                    </tr>
                    <%
						ArrayList<Board> list = new BoardDAO().getMyInquiry(userID, pageNumber);
                    	for(int i=0; i<list.size();i++){
                    		%>
                    <tr >
                        <td><%=list.get(i).getBoard_num() %></td>
                        <td><%=list.get(i).getBoard_title() %></td>
                        <td><%=list.get(i).getBoard_regdate() %></td>
                        <td><%if(list.get(i).getBoard_reply_yn() == '0'){%>
                        	Y
                        	<%
                        }else{
                        	%>
                        	N
                        	<%
                        }
                        	%></td>
                        <td><button class="ship_update" type="button"onClick="location.href='update.jsp?board_num=<%=list.get(i).getBoard_num()%>'">수정</button></td>
                    </tr>
                    <%
                    	}
                    %>

                </table> 
                    </form>
        </article>
       </section>
    </div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>