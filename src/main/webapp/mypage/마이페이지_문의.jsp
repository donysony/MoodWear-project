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
	//전체 레코드 수
	int totalCount = new BoardDAO().getMyInquiryTotalCount(userID);
	
	int pageNumber = 1; //페이지 기본 1페이지 할당
	int nowPage = 1 ;//현재 레코드가 해당하는 페이지
	int numPerPage = 5; //페이지당 보여주는 레코드수 
	int pagePerBlock = 5; //보여줄 블록수
	int totalPage = 0;//전체 페이지수
	int totalBlock = 0;//전체 블록수
	int nowBlock = 1; //현재 레코드가 해당하는 블록

	//만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
	//'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장
	//파라미터는 기본적으로 데이터 형식이 object이므로 넘어오는 데이터를 모두 각각 데이터 형식에 맞게 형변환 해줘야함
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	System.out.println("==========================" );
	System.out.println("페이지 번호:" + pageNumber);
	}
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
		pageNumber = nowPage;
	System.out.println("현재 페이지:" + nowPage);
	}
	
	totalPage = (int)Math.ceil((double)totalCount/numPerPage); //전체 페이지수
	System.out.println("전체 페이지수 :" + totalPage);
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock);//전체블록수
	System.out.println("전체 블록수 :" +totalBlock);
	//nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //현재 레코드가 해당하는 블록
	nowBlock = (int)Math.ceil((double)pageNumber/pagePerBlock); //현재 레코드가 해당하는 블록
	System.out.println("현재 레코드가 해당하는 블록위치:" + nowBlock );
	System.out.println("==========================" );
	
	//ex 전체레코드 45개, 전체페이지수 9개, 전체블록수 2개, nowblock 1/5 ->1
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>1:1문의내역</title>
    <script>
    	function blockPrev(value){
		document.readFrm.nowPage.value=<%=pagePerBlock%> * (value-1)+1;
		document.readFrm.submit();
		}
		function blockNext(value){
			document.readFrm.nowPage.value=<%=pagePerBlock%> * (value-1)+1;
			document.readFrm.submit();
		}

</script>
    <link rel="stylesheet" href="../css/마이페이지_문의.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="../aside.jsp"/>
    </aside>
    <section>
        <article>
            <h2>1:1 문의내역</h2>
            <hr>
                <form action="update.jsp" method="get" >
            <table class="shipping_address">
                    <tr>
		                <th width="10%">글번호</th>
		                <th width="50%">제목</th>
		                <th width="15%">작성일</th>
		                <th width="10%">답변여부</th>
						<th width="15%">수정</th>
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
                        	%></td>
                        <td><button class="ship_update" type="button" onClick="location.href='update.jsp?board_num=<%=list.get(i).getBoard_num()%>'">수정</button></td>
                    </tr>
                    <%
                    	}
                    %>

                </table> 
                    </form>
         <!-- 페이징 처리 영역 -->
        <div class="paging">
        	<ul>
            <%
            	int pageStart = (nowBlock-1) * pagePerBlock +1;
            	int pageEnd = (pageStart + pagePerBlock <= totalPage)?(pageStart + pagePerBlock):totalPage + 1;
            	if(totalPage != 0){
            		if(nowBlock > 1){
        	%>
               <li><a href="javascript:blockPrev('<%=nowBlock-1%>')">&lt;</a></li>
         	<%
            	}
            		for( ;pageStart<pageEnd;pageStart++){
            %>
                <li><a href="마이페이지_문의.jsp?pageNumber=<%=pageStart%>"><%=pageStart %></a></li>
            <%
            	}
            		if(totalBlock > nowBlock){
            %>
               <li><a href="javascript:blockNext('<%=nowBlock+1%>')">&gt;</a></li>
            <%
            		}
            	}
            %>
            </ul>
        </div>
        
        
        <form name="listFrm" method="post" action="마이페이지_문의.jsp">
			<input type="hidden" name="reload" value="true">
			<input type="hidden" name="nowPage" value="1">
		</form>
		<form name="readFrm" method="get" action="마이페이지_문의.jsp">
			<input type="hidden" name="nowPage" value="<%=pageNumber%>">
		</form>
        
        
        </article>
       </section>
    </div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>