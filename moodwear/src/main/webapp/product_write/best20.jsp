<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product_write.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product_write.ProductDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/best20.css" type="text/css">
</head>
<body>

	<%
	ArrayList<Product> vlist = pMgr.getProductList();
	%>
	
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
                    <li><a href=""><img src="../img/좋아요.png"></a></li>
                    <li><a href=""><img src="../img/장바구니.png"></a></li>
                </ul>
            </div>
        </div>
    </header>
    <br>
    <br>
    <br>
<div class="total">
    <section id="first">
        <p class="name">Best 20</p>
<%
for(int i=0; i<vlist.size(); i++){
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

            <div>
                <div class="ibox">
                    <img src="../img/톰포드.png" class="product">
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
                    <div class="prodName">톰포드 LOST CHERRY</div>
                    <div class="prodTag">
                        <div>#과일향</div>
                        <div>#관능적</div>
                        <div>#30대</div>
                    </div>
                    <div class="volume">100mlㅣ909,000</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/세르주 루텐.png" class="product">
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
                    <div class="prodName">세르주 루텐 다튜라느와</div>
                    <div class="prodTag">
                        <div>#상큼한</div>
                        <div>#사탕향</div>
                        <div>#20대</div>
                    </div>
                    <div class="volume">50mlㅣ143,500</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/테싯.png" class="product">
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
                    <div class="prodName">이솝 테싯</div>
                    <div class="prodTag">
                        <div>#유자</div>
                        <div>#바질</div>
                        <div>#흙내음</div>
                    </div>
                    <div class="volume">50mlㅣ140,000</div>
                </div>
            </div>
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


            <div>
                <div class="ibox">
                    <img src="../img/톰포드.png" class="product">
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
                    <div class="prodName">톰포드 LOST CHERRY</div>
                    <div class="prodTag">
                        <div>#과일향</div>
                        <div>#관능적</div>
                        <div>#30대</div>
                    </div>
                    <div class="volume">100mlㅣ909,000</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/세르주 루텐.png" class="product">
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
                    <div class="prodName">세르주 루텐 다튜라느와</div>
                    <div class="prodTag">
                        <div>#상큼한</div>
                        <div>#사탕향</div>
                        <div>#20대</div>
                    </div>
                    <div class="volume">50mlㅣ143,500</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/테싯.png" class="product">
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
                    <div class="prodName">이솝 테싯</div>
                    <div class="prodTag">
                        <div>#유자</div>
                        <div>#바질</div>
                        <div>#흙내음</div>
                    </div>
                    <div class="volume">50mlㅣ140,000</div>
                </div>
            </div>
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

            <div>
                <div class="ibox">
                    <img src="../img/톰포드.png" class="product">
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
                    <div class="prodName">톰포드 LOST CHERRY</div>
                    <div class="prodTag">
                        <div>#과일향</div>
                        <div>#관능적</div>
                        <div>#30대</div>
                    </div>
                    <div class="volume">100mlㅣ909,000</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/세르주 루텐.png" class="product">
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
                    <div class="prodName">세르주 루텐 다튜라느와</div>
                    <div class="prodTag">
                        <div>#상큼한</div>
                        <div>#사탕향</div>
                        <div>#20대</div>
                    </div>
                    <div class="volume">50mlㅣ143,500</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/테싯.png" class="product">
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
                    <div class="prodName">이솝 테싯</div>
                    <div class="prodTag">
                        <div>#유자</div>
                        <div>#바질</div>
                        <div>#흙내음</div>
                    </div>
                    <div class="volume">50mlㅣ140,000</div>
                </div>
            </div>
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

            <div>
                <div class="ibox">
                    <img src="../img/톰포드.png" class="product">
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
                    <div class="prodName">톰포드 LOST CHERRY</div>
                    <div class="prodTag">
                        <div>#과일향</div>
                        <div>#관능적</div>
                        <div>#30대</div>
                    </div>
                    <div class="volume">100mlㅣ909,000</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/세르주 루텐.png" class="product">
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
                    <div class="prodName">세르주 루텐 다튜라느와</div>
                    <div class="prodTag">
                        <div>#상큼한</div>
                        <div>#사탕향</div>
                        <div>#20대</div>
                    </div>
                    <div class="volume">50mlㅣ143,500</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/테싯.png" class="product">
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
                    <div class="prodName">이솝 테싯</div>
                    <div class="prodTag">
                        <div>#유자</div>
                        <div>#바질</div>
                        <div>#흙내음</div>
                    </div>
                    <div class="volume">50mlㅣ140,000</div>
                </div>
            </div>
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

            <div>
                <div class="ibox">
                    <img src="../img/세르주 루텐.png" class="product">
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
                    <div class="prodName">세르주 루텐 다튜라느와</div>
                    <div class="prodTag">
                        <div>#상큼한</div>
                        <div>#사탕향</div>
                        <div>#20대</div>
                    </div>
                    <div class="volume">50mlㅣ143,500</div>
                </div>
            </div>

            <div>
                <div class="ibox">
                    <img src="../img/테싯.png" class="product">
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
                    <div class="prodName">이솝 테싯</div>
                    <div class="prodTag">
                        <div>#유자</div>
                        <div>#바질</div>
                        <div>#흙내음</div>
                    </div>
                    <div class="volume">50mlㅣ140,000</div>
                </div>
            </div>
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