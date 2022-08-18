<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="board" class="board.Board"/>
<%
	
	BoardDAO boardDAO = new BoardDAO();
	int numPerPage = 10; //페이지당 보여주는 레코드수
	int pagePerBlock = 5; //보여줄 블록수
	int totalPage = 0; //전체 페이지수
	int totalBlock = 0; //전체 블록수
	int nowBlock = 1; //현재 레코드가 해당하는 블록
	int nowPage = 1; //현재 레코드가 해당하는 페이지
	
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	String keyWord = "", keyField="";
	
	//넘겨받은 keyWord와 keyField값이 있으면 각 변수에 저장해라
	if(request.getParameter("keyWord") != null){
		keyWord= request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	//새로고침시 keyWord와 keyField는 초기화
	if(request.getParameter("reload") != null){
		if(request.getParameter("reload").equals("true")){
			keyWord="";
			keyField="";
		}
	}
	if(request.getParameter("nowPage") !=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="../css/boardlist.css">
<title>boardlist</title>
<script type="text/javascript">
	function check(){
		if(document.searchFrm.keyWord.value==""){
			alert("검색어를 입력하세요");
			document.searchFrm.keyWord.focus();
			return;
		}
				document.searchFrm.submit();
	}
	function read(){
		
	}
	function block(value){
		document.readFrm.nowPage.value=<%=pagePerBlock%> * (value-1)+1;
		document.readFrm.submit();
	}

</script>
</head>
<body>

<%
	
	int pageNumber = 1; //페이지 기본은 1페이지를 할당
	//만약 파라미터로 넘어온 오브젝트 타입 'pageNumber'가 존재한다면
	//'int'타입으로 캐스팅을 해주고 그 값을 'pageNumber'변수에 저장
	//파라미터는 기본적으로 데이터 형식이 object이므로 넘어오는 데이터를 모두 각각 데이터 형식에 맞게 형변환 해줘야함
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}

	
	int listTotalCount = boardDAO.getTotalCount(keyField, keyWord); //전체 레코드 수
	
	
	totalPage = (int)Math.ceil((double)listTotalCount/numPerPage); //전체 페이지 수
	totalBlock = (int)Math.ceil((double)totalPage/pagePerBlock); //전체 블록 수
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //현재 레코드가 해당하는 블록
	

%>

    <section class="section_board">
        <article class="article_board">
            <div class="select_QA">
            <form name="categoryFrm" method="post" action="boardlist.jsp">
            <select name="inquiryProduct" id="selectbox">
                <option value="all">전체</option>
                <option value="inquriy">상품문의</option>
                <option value="notice">이벤트공지/공지사항</option>
            </select>
            </form>
            <h1>문의게시판</h1>
        </div>
        <div class="table_btn">
            <table class="table_QA">
                <tr class="tablehead">
                    <th width="5%">번호</th>
                    <th width="15%">카테고리</th>
                    <th width="40%">제목</th>
                    <th >작성자</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
                <tr class="tabletr">
                    <td><img src="img/clarity_notification-line.png" alt="공지"></td>
                    <td>공지사항</td>
                    <td class="inquiry_ans">[필독] 교환 및 환불 신청 전 확인해주세요!!!</td>
                    <td>관리자</td>
                    <td>2021.07.26</td>
                    <td>1988</td>
                </tr>
                <%
                	ArrayList<Board> list = boardDAO.getlist(pageNumber, keyField, keyWord, userID );
                	MemberDAO memberDAO = new MemberDAO();
                	for(int i =0; i<list.size();i++){
                		String member_id = list.get(i).getBoard_member_id();
                		String memberName = memberDAO.getMemberName(member_id);
                			
                %>                
                <tr class="tabletr">
                    <td><%=list.get(i).getBoard_num() %></td>
                    
                    <td>상품문의</td>
                    <!-- 해당 게시글 번호를 보냄으로 써 문의글이 보여지도록 -->
                    <td class="inquiry_ans"><a href="pwcheck.jsp?board_num=<%=list.get(i).getBoard_num()%>"><%=list.get(i).getBoard_title() %><img src="img/ei_lock.png" alt="잠금" ></a></td>
                    <td><%=memberName.substring(0,1)+"*"+memberName.substring(memberName.length()-1) %></td>
                    <td><%=list.get(i).getBoard_regdate() %></td>
                    <td><%=list.get(i).getBoard_views() %></td>
                </tr>
                	<%
                	}
                	%>	  
               
            </table>
        	
				
            <div class="buttondiv">
			<button type="button" onclick="location.href='boardlist.jsp'" id="listbtn">목록</button> &emsp;
            <input type="button" onclick="location.href='write.jsp'" id="writebtn" value="글쓰기">
        </div>
        </div>
            <!-- 페이징 처리 영역 -->
        <div class="paging">
        	<ul>
            <%
            	int pageStart = (nowBlock-1) * pagePerBlock +1;
            	int pageEnd = (pageStart + pagePerBlock <= totalPage)?(pageStart + pagePerBlock):totalPage + 1;
            	if(totalPage != 0){
            		if(nowBlock > 1){
        	%>

                <li><a href="javascript:block('<%=nowBlock-1%>')">&lt;</a></li>
         	<%
            	}
            		for( ;pageStart<pageEnd;pageStart++){
            %>
                <li><a href="boardlist.jsp?pageNumber=<%=pageStart+1%>"><%=pageStart %></a></li>
            <%
            	}
            		if(totalBlock > nowBlock){
            %>
               <li><a href="javascript:block('<%=nowBlock+1%>')">&gt;</a></li>
            <%
            		}
            	}
            %>
            </ul>
        </div>



        <div class="search_box">
        <form action="boardlist.jsp" id="search_form" name="searchFrm" method="get">
        <select name="keyField" id="search_category">
            <option value="전체" >&ensp;전체</option>
            <option value="제목" <%if(keyField.equals("제목")) out.println("selected"); %>>&ensp;제목</option>
            <option value="작성자" <%if(keyField.equals("작성자")) out.println("selected"); %>>&ensp;작성자</option>
        </select>&ensp;
            <input type="text" id="btn_text" name="keyWord">
            <button type="button" id="btn_search" onClick="javascript:check()"><img src="img/fe_search.png" alt=""></button>
        </form>
        </div>
		
		<!-- 
		<form name="listFrm" method="post">
			<input type="hidden" name="reload" value="true">
			<input type="hidden" name="nowPage" value="1">
		</form>
		<form name="readFrm" method="get">
			<input type ="hidden" name="num">
			<input type="hidden" name="nowPage" value="<%=nowPage %>">
			<input type="hidden" name="keyField" value="<%=keyField%>">
			<input type="hidden" name="keyWord" value="<%=keyWord %>">
		</form>
		 -->		
		
        </article>
    </section>

</body>
</html>