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
/*         $(function() {
            var color1 = {"color":"#000000"}
                $(".1-1").click(function(){
                $(".1-1").css(color1)
                })
                $(".1-2").click(function(){
                $(".1-2").css(color1)
                })
            }) */
    </script>
</head>
<body>

	<%
	ArrayList<Product> vlist = pMgr.getProductTagList();
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
                        <li><a href=""><img src="../img/좋아요.png" ></a></li>
                        <li><a href=""><img src="../img/장바구니.png"></a></li>
                    </ul>
                </div>
            </div>
        </header>
    <!------------ 태그 검색창 시작 ------------>
    <h2>태그검색</h2>
    <hr>
<form method="get" action="tag_search_2.jsp" name="product_tag">
    <div class="tag_box">
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="사랑스러운"># 사랑스러운</a><br><br>
            <a href="#" id="product_tag" value="가벼운"># 가벼운</a><br><br>
            <a href="#" id="product_tag" value="묵직한"># 묵직한</a><br><br>
            <a href="#" id="product_tag" value="상큼한"># 상큼한</a><br><br>
            <a href="#" id="product_tag" value="비누향"># 비누향</a><br><br>
        </div>
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="포근한"># 포근한</a><br><br>
            <a href="#" id="product_tag" value="풀숲"># 풀숲</a><br><br>
            <a href="#" id="product_tag" value="절향"># 절향</a><br><br>
            <a href="#" id="product_tag" value="아침"># 아침</a><br><br>
            <a href="#" id="product_tag" value="밤"># 밤</a><br><br>
        </div>
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="커리어우먼"># 커리어우먼</a><br><br>
            <a href="#" id="product_tag" value="시원한"># 시원한</a><br><br>
            <a href="#" id="product_tag" value="달달한"># 달달한</a><br><br>
            <a href="#" id="product_tag" value="섹시한"># 섹시한</a><br><br>
            <a href="#" id="product_tag" value="우디향"># 우디향</a><br><br>
        </div>
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="바닐라"># 바닐라</a><br><br>
            <a href="#" id="product_tag" value="스파이시"># 스파이시</a><br><br>
            <a href="#" id="product_tag" value="머스크"># 머스크</a><br><br>
            <a href="#" id="product_tag" value="머스크"># 파우더리</a><br><br>
            <a href="#" id="product_tag" value="20"># 20대</a><br><br>
        </div>
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="30"># 30대</a><br><br>
            <a href="#" id="product_tag" value="오렌지"># 오렌지</a><br><br>
            <a href="#" id="product_tag" value="무화과"># 무화과</a><br><br>
            <a href="#" id="product_tag" value="자몽"># 자몽</a><br><br>
            <a href="#" id="product_tag" value="레몬"># 레몬</a><br><br>
        </div>
        <div class="tag_boxes">
            <a href="#" id="product_tag" value="꽃"># 꽃</a><br><br>
            <a href="#" id="product_tag" value="봄"># 봄</a><br><br>
            <a href="#" id="product_tag" value="여름"># 여름</a><br><br>
            <a href="#" id="product_tag" value="가을"># 가을</a><br><br>
            <a href="#" id="product_tag" value="겨울"># 겨울</a><br><br>
        </div>
    </div>
    </form>

        <!------------ 태그 검색창 끝 ------------>

        <!------------ 검색 결과 시작 ------------>


        <section>
        <div class="serchNum">총 n개의 상품이 검색되었습니다.</div>
        <!------------ 1-1 상품 ------------>
<!-- 위에서 넘겨준 value값을 가져오려면 어떻게 해야되는지 -->
<%
	for(int i=0; i<vlist.size(); i++){
		String product_tag = request.getParameter("product_tag");
		//Product regBean = new product();
		pMgr.getProductTagList();
		Product regBean = vlist.get(i);
		
%>
        <div class="total">
            <section id="first">
        
        <article class="first_prod">
            <div>
                <div class="ibox"  onclick="location.href='detail.jsp?product_tag=<%=vlist.get(i).getProduct_num() %>'">
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
        
                <article class="first_prod">
                    <div>
                        <div class="ibox">
                            <img src="../img/가브리엘.png" class="product">
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
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>
        
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
        
                <article class="first_prod">
                    <div>
                        <div class="ibox">
                            <img src="../img/가브리엘.png" class="product">
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
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>
        
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
        
                <article class="first_prod">
                    <div>
                        <div class="ibox">
                            <img src="../img/가브리엘.png" class="product">
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
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>
        
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
        
                <article class="first_prod">
                    <div>
                        <div class="ibox">
                            <img src="../img/가브리엘.png" class="product">
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
                            <div class="prodName">샤넬 가브리엘</div>
                            <div class="prodTag">
                                <div>#깔끔한</div>
                                <div>#날렵한</div>
                                <div>#20대</div>
                            </div>
                            <div class="volume">100mlㅣ242,000</div>
                        </div>
                    </div>
        
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
    </section>
    </div>
</body>
</html>
