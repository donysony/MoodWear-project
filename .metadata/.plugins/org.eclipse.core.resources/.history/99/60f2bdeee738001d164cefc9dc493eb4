<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<jsp:useBean id="upbean" class ="product.Product"/>

<!DOCTYPE html> 
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick-theme.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Fjord+One&family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/상세페이지.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="slick-1.8.1/slick/slick.js"></script>
    <script>
        $(function(){
            $('.multiple-items').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3,
    // 지정한 클래스에 맞게 값을 지정한다.
    prevArrow : $('.prevArrow'), 
  nextArrow : $('.nextArrow'), 
});
function onlyNumber() 
{ 
	var str = 100;
	var Mynum = document.getElementById("inptext").value;
	Mynum =Mynum.replace(/[^0-9]/g,'');
	document.getElementById("inptext").value=Mynum;
	var plus = document.getElementById("inptext").value=Mynum;
	if (plus < str)
	{
		document.getElementById("inptext").value=100;
	}else if (plus > 300)
	{
		document.getElementById("inptext").value=300;
	}
} 
$(document).ready(function(){
	var inp =$("input").val();
	$(".up").on("click",function(){
		setTimeout(function(){
		if (inp == 300)
		{
			inp;
		}
		else{inp ++;}
		$("input").val(inp);
		},500);
	});
	$(".down").on("click",function(){
		setTimeout(function(){
		if (inp == 100)
		{
			inp;
		}
		else if(inp <= 300)
		{
			inp--;
		}
		$("input").val(inp);
		},500);
	});
});


        })
        

    </script>

    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery-user.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
</head>
        <%
        int product_num =0;
        if(request.getParameter("product_num") != null){
        	product_num = Integer.parseInt(request.getParameter("product_num"));
        }
        Product product = pMgr.get_Product(product_num);
		%>


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
        <section>
            <div class="topTotal">
            <div class="imgBox"> <!-- 왼쪽상단 이미지 박스 -->
                <div class="prodImg">
                    <img src="../fileupload/<%=product.getProduct_img() %>" id="img">
                </div>
                <div class="tagImg">
                    <img src="../fileupload/<%=product.getProduct_tagImg1() %>" id="img">
                    <img src="../fileupload/<%=product.getProduct_tagImg2() %>" id="img">
                </div>
            </div>
            <div class="topRightBox">
                <h3><%=product.getProduct_brand() %> <%=product.getProduct_name() %></h3>
                <hr>
                <div class="prodTag">
                    <div>#<%=product.getProduct_tag1() %></div>
                    <div>#<%=product.getProduct_tag2() %></div>
                    <div>#<%=product.getProduct_tag3() %></div>
                </div>
                <table>
                    <tr>
                        <td>가격</td>
                        <td colspan="3"><%=product.getProduct_price() %></td>
                    </tr>
                    <tr>
                        <td>용량&emsp;&emsp;&emsp;</td>
                        <td colspan="3"><%=product.getProduct_volume() %>ml</td>
                    </tr>
                    <tr>
                        <td>적립금</td>
                        <td colspan="3">1000원</td>
                    </tr>
                    <tr>
                        <td>리뷰 수</td>
                        <td colspan="3">123개</td>
                    </tr>
                    <tr>
                        <td>수량</td>
                        <td><button class="down" >-</button></td>
                        <td><input type="text" value="1" id="inptext"  onfocusout="onlyNumber();"/></td>
                        <td><button class="up">+</button></td>
                    </tr>
                </table>
                <div class="totalSum">
                    <div>총 상품 금액(수량)&emsp;</div>
                    <div>103,000원&nbsp;</div>
                    <div>(<input type="text" value="1" id="inptext"  onfocusout="onlyNumber();"/>개)</div>
                </div>
                <div class="button">
                    <div><a href="">구매하기</a></div>
                    <div><a href="">장바구니</a></div>
                    <div><a href="" class="heart">♡&nbsp;10</a></div>
                </div>
            </div>
        </div>
        </section>
        <section class="sameTag">
            <div>
        <div class="miniNav">
            <div><a href="">상세정보</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">구매안내</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">상품 Q&A</a></div>
        </div>

              <br>
              <br>
        </section>
        <hr style="width: 1200px; text-align: center; margin: auto;">
        <!-- 상세정보 -->
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section class="detailInfo">
            <div class="detail_product">
                <img src="../fileupload/<%=product.getProduct_img() %>" id="img" style="width: 600px;">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <h4><%=product.getProduct_info() %></h4>
                    <br>
                    <br>

                    <br>

            </div>

        
        <hr style="width: 1200px;">
        <br>
        <!-- 구매안내 -->
        <h5><strong>상품결제정보</strong><br><br>
고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 
판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.<br>
<br>
무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.<br>  
<br>
※ 주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 3일 이내로 입금되지 않은 주문은 자동취소 됩니다.<br>
<br>
더 자세한 내용은 Q&A 게시판 내 공지통해 확인 가능합니다.<br></h5>
<hr style="width: 1200px;">
<!-- 사용후기 -->
<h1 style="margin-bottom: 30px; color: rgb(100, 100, 100);">사용후기</h1>
<table class="review">
    <tr class="tr">
        <td class="td">제목</td>
        <td class="tdName" style="width: 450px;">작성자</td>
    </tr>
    <tr class="tr">
        <td class="td">좋아요</td>
        <td class="tdName">장*윤</td>
    </tr>
    <tr class="tr">
        <td class="td">너무 좋아요 감사합니다.</td>
        <td class="tdName">박*진</td>
    </tr>
    <tr class="tr">
        <td class="td">향이 너무 좋아요 포장도 마음에 들어요</td>
        <td class="tdName">김*현</td>
    </tr>
    <tr class="tr">
        <td class="td">세상 행복해지는 향기!</td>
        <td class="tdName">김*영</td>
    </tr>

</table>

</section>



<br>
<br>

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