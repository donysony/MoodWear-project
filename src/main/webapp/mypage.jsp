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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
    <link rel="stylesheet" href="css/mypage.css">
</head>
<body>
    <header>
    <jsp:include page="header.jsp"/>
    </header>
    <div class="aside_section">
        <aside>
	<jsp:include page="aside.jsp"/>
        </aside>
    <section>
        <article>
            <div class="title">
            <h2>주문조회</h2>
            <h4><a href="주문조회.jsp">더보기&gt;</a></h4>
            </div>
            <table class="ordertable">
                <tr>
                    <td>2022.07.25</td>
                    <td>미스디올 블루밍부케</td>
                    <td>2022.07.18</td>
                    <td>상품준비중</td>
                </tr>
            </table>
        </article>
        <article class="article_like">
            <div class="title">
            <h2>좋아요</h2>
            <h4><a href="좋아요.jsp">더보기&gt;</a></h4>
            </div>
            <hr>
            <div class="container">
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="like"></span>
                <span class="cart"></span>
            </div>
            <p><a href="#">블루밍부케</a></p>
            </div>
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="like"></span>
                <span class="cart"></span>
                </div>
                <p><a href="#">블루밍부케</a></p>
            </div>
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="like"></span>
                <span class="cart"></span>
                </div>
                <p><a href="#">블루밍부케</a></p>
            </div>
        </div>
            
    </article>
    <article>
        <div class="title">
            <h2>1:1 문의내역</h2>
            <h4><a href="마이페이지_문의.jsp">더보기&gt;</a></h4>
        </div>
        <hr>
<!--         <div class="inquirynotice">
        <img src="img/bi_exclamation-circle.png" alt="경고">
        <p>문의하신 기록이 없습니다</p>
        </div> -->

        <table class="table_inquiry">
            <tr class="tablehead">
                <th width="10%">글번호</th>
                <th width="45%">제목</th>
                <th width="15%">작성일</th>
                <th width="10%">답변여부</th>
                <th>조회수</th>
            </tr>
				<%
						ArrayList<Board> list = new BoardDAO().getMyInquiryMypage(userID);
                    			if(!list.isEmpty()){
                    	for(int i=0; i<list.size();i++){
                %>
                    <tr class="tabletr">
                        <td><%=list.get(i).getBoard_num() %></td>
                        <td><a href="my_inquiry.jsp?board_num=<%=list.get(i).getBoard_num()%>"><%=list.get(i).getBoard_title() %></a></td>
                        <td><%=list.get(i).getBoard_regdate() %></td>
                        <td><%if(list.get(i).getBoard_reply_yn() == '0'){%>
                        	Y
                        	<%
                        }else{
                        	%>
                        	N
                        	<%
                        }
                        	%>
                        </td>
                        <td><%=list.get(i).getBoard_views() %></td>
                    </tr>
                    <%
                    	}
                    	}else{
                    		%>
                   <tr class="inquirynotice">
                   <td colspan="5">
			        <img src="img/bi_exclamation-circle.png" alt="경고">
			        <p>문의하신 기록이 없습니다</p>
			        </td>
			       	</tr>
                 		<%		
                 			}
                 		%>

       	</table>
        </article>
    </section>
</div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>