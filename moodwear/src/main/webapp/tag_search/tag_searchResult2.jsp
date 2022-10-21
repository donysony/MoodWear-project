<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/태그검색.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
		function tagform() {
			document.querySelector(".tag_box>input").value = event.target.value
			// . 붙여서 css 문법으로 적음
			// querySelector로 불러올 것은 무조건 한개여야 함.
			// 요소가 여러개면 document.querySelectorAll을 적어야 함.
			// document.querySelectorAll()[숫자]
/* 			console.log(document.querySelector(".tag_box>input"))
			console.log(event.target) */
			document.getElementsByClassName("formBox")[0].submit()
			// getElementById: id를 토대로 가져옴(id는 한개여야 함).
			// getElementsByClassName: 클래스에 해당하는 모든것을 가져옴.
			// getElementsByClassName("formBox")[숫자] (하나여도 무조건 0을 적어야 함)
			
			// event.target : event가 실행될 요소를 불러옴.(event=함수를 실행시킨 요소)
			
			
			
		}
    </script>
</head>
<body>



    <div id="body-wrapper">
        <header>
            <div class="top">
                <ul>
                    <li><a href="">고객센터</a></li>
                    <li><a href="">회원가입</a></li>
                    <li><a href="">로그인</a></li>
                </ul>
            </div>
    
            <div class="nav">
                <div>
                    <a href="">
                        <img src="../img/로고 누끼.png" id="logo"></a>
                </div>
    
                    
                <div>
                    <ul>
                        <li><a href="" class="ct">브랜드 상품</a></li>
                        <li><a href="" class="ct">베스트 상품</a></li>
                        <li><a href="" class="ct">무드웨어 소개</a></li>
                        <li><a href="" class="ct">웨어러 추천</a></li>
                        <li><a href="" class="ct">문의</a></li>
                    </ul>
                </div>
    
                <div>
                    <ul>
                        <li>
                            <div class="search">
                                <span>&ensp;검색페이지로 이동&emsp;&ensp;</span> 
                                <img src="../img/화살표.png" id="sc">
                            </div>
                        </li>
                        <li><a href=""><img src="../img/좋아요.png" ></a></li>
                        <li><a href=""><img src="../img/장바구니.png"></a></li>
                    </ul>
                </div>
            </div>
        </header>
    <!------------ 태그 검색창 시작 ------------>
    <h2>태그검색</h2>
    <hr>
<form method="get" action="tag_searchResult.jsp" name="product_tag" class="formBox">
    <div class="tag_box">
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="사랑스러운" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="가벼운" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="묵직한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="상큼한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="비누향" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="포근한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="풀숲" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="절향" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="아침" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="밤" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="커리어우먼" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="시원한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="달달한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="섹시한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="우디향" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="바닐라" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="스파이시" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="머스크" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="파우더리" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="20대" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="30대" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="오렌지" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="무화과" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="자몽" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="레몬" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="꽃" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="봄" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="여름" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="가을" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="겨울" onclick="tagform()"><br><br>
        </div>
    </div>
    </form>

        <!------------ 태그 검색창 끝 ------------>

        <!------------ 검색 결과 시작 ------------>
        <%
			ArrayList<Product> vlist = pMgr.getProductTagList(request.getParameter("product_tag"));
        	System.out.print(vlist.size());
		%>

        <section>
        <!------------ 1-1 상품 ------------>
		    <%
				for(int i=0; i<vlist.size(); i++){
					String product_tag1 = vlist.get(i).getProduct_tag1();
					String product_tag2 = vlist.get(i).getProduct_tag2();
					String product_tag3 = vlist.get(i).getProduct_tag3();
					//Product regBean = new product();
					pMgr.getProductTagList(product_tag1);
					pMgr.getProductTagList(product_tag2);
					pMgr.getProductTagList(product_tag3);
					
		%>
        <div class="total">
            <section id="first">
        
        <article class="first_prod">
            <div>
                <div class="ibox"  onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=vlist.get(i).getProduct_img()%>" class="product">
                        <div class="two">
                            <div class="tbox">
                                <img src="../img/좋아요.png" class="thum">
                                <img src="../img/fullheart.png" class="full">
                            </div> &ensp;
        
                            <div class="tbox">
                                <img src="../img/장바구니.png" class="cart">
                            </div>
                        </div>
                </div>
                <div class="tag">
                    <div class="prodName"><%=vlist.get(i).getProduct_brand() %> <%=vlist.get(i).getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=vlist.get(i).getProduct_tag1() %></div>
                        <div>#<%=vlist.get(i).getProduct_tag2() %></div>
                        <div>#<%=vlist.get(i).getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=vlist.get(i).getProduct_volume() %>mlㅣ<%=vlist.get(i).getProduct_price() %></div>
                </div>
            </div>
<%
}
%>

 
    </section>
    <section id="first">
<%
for(int i=4; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>

        <article class="first_prod">
            <div>
                <div class="ibox">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
                    <%
}
%>


 
    </section>
    <section id="first">

<%
for(int i=8; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>

    </section>
    <section id="first">
<%
for(int i=12; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>


    </section>
    <section id="first">
<%
for(int i=16; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>

 
    </section>

</div>


    

<!--     <section>
        <a href=""><img src="../img/가입배너.png" id="banner"></a>
    </section> -->
    </div>
    <footer>
        <span id="introduce">
            mood wearㅣ인천시 남동구 인주대로 518, 엔타스 12층 (01234)ㅣ대표자 : 장지윤 박경선 정이랑<br>
            사업자 등록번호 : 214-22-07141ㅣ통신판매업신고 : 2022-인천남동, 10392ㅣ개인정보관리책임자 : <br>
            장지윤ㅣ호스팅서비스사업자 : moodwearㅣ고객센터 : 1234-1234ㅣ이메일 : mwmw@mw.co.kr
        </span>

        <div id="ft">
            <ul>
                <li><a href="">개인정보 처리방침 |</a></li>
                <li><a href="">이용약관 |</a></li>
                <li><a href="">사이트맵 |</a></li>
                <li><a href="">환불 정책 | </a></li>
                <li><a href="">회사 세부정보</a></li>
            </ul>
            <span id="copy">Copyright 2022 MOODWEAR Inc. all rights reserved.</span>
        </div>
    </footer>
</body>
</html>