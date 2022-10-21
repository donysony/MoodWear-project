<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
 <header>
 <%
 	//메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
 	String userID = null;
 	if(session.getAttribute("userID") != null){
 			userID = (String)session.getAttribute("userID");
 	}
 	
 	//로그인 하지 않았을 때 보여지는 화면
 		if(userID == null){
 %>
                <div class="top">
                    <ul>
                        <li><a href="../join.jsp">회원가입</a></li>
                        <li><a href="../login/login.jsp">로그인</a></li>
                    </ul>
                </div>
<%
		//로그인이 되어 있는 상태에서 보여주는 화면
 		}else{
 			%>
 			 <div class="top_login">
                    <ul>
                        <li><a href="../mypage/mypage.jsp">마이페이지</a></li>
                        <li><a href="../login/logoutAction.jsp">로그아웃</a></li>
                    </ul>
                </div>
 			
 			
 			
 			<%
 		}
%>
                <div class="nav">
                    <div>
                        <a href="../main.jsp">
                            <img src="../img/로고 누끼.png" id="logo"></a>
                    </div>

                        
                    <div>
                        <ul>
                            <li><a href="" class="ct">브랜드 상품</a></li>
                            <li><a href="" class="ct">베스트 상품</a></li>
                            <li><a href="무드웨어소개.jsp" class="ct">무드웨어 소개</a></li>
                            <li><a href="웨어러추천.jsp" class="ct">웨어러 추천</a></li>
                            <li><a href="../board/boardlist.jsp" class="ct">문의</a></li>
                        </ul>
                    </div>

               <div>
                    <div class="search">
                        <form action="" name="search_form">
                            <input type="text" id="btn_text" placeholder="검색페이지로 이동">
                            <button type="submit" id="btn_search"><img src="../img/fe_search.png" alt=""></button>
                        </form>
                            <a href="../mypage/좋아요.jsp" id="search_like"><img src="../img/좋아요.png" ></a>
                            <a href="../mypage/장바구니.jsp"><img src="../img/장바구니.png"></a>
                   </div>
              </div>
            </div>
            </header>
</body>
</html>