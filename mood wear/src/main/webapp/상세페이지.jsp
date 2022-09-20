<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 상세페이지</title>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick-theme.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Fjord+One&family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/상세페이지.css">
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
<body>
    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
        <section>
            <div class="topTotal">
            <div class="imgBox"> <!-- 왼쪽상단 이미지 박스 -->
                <div class="prodImg">
                    <img src="img/가브리엘.png">
                </div>
                <div class="tagImg">
                    <img src="img/시트러스.png">
                    <img src="img/비누향.png">
                </div>
            </div>
            <div class="topRightBox">
                <h3>산타마리아노벨라 포푸리 오 드 코롱</h3>
                <hr>
                <div class="prodTag">
                    <div>#상큼한</div>
                    <div>#사탕향</div>
                    <div>#20대</div>
                </div>
                <table>
                    <tr>
                        <td>가격</td>
                        <td colspan="3">103,500원</td>
                    </tr>
                    <tr>
                        <td>용량&emsp;&emsp;&emsp;</td>
                        <td colspan="3">100ml</td>
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
        
        <br>
        <div class="miniNav">
            <div><a href="">상세정보</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">구매안내</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">상품 Q&A</a></div>
        </div>

        <hr style="width: 1200px; text-align: center; margin: auto;">
        <!-- 상세정보 -->
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section class="detailInfo">
            <div class="detail_product">
                <img src="img/샤넬 가브리엘.png" style="width: 600px;">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <h4>시나몬이 따뜻하고 우아한 향을 내며<br>우디한 향의 베티버를 감싸고 있는 스파이시한 향을 부드럽게 완화해 줍니다.<br>
                    딥하고 드라이한 파촐리는 어두워지기 직전<br>마지막 남은 온기가 빛날 때의 일몰 컬러처럼 조화롭게 레이어링되어 강렬함을 높입니다.</h4>
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
    
	<footer>
   		 <jsp:include page="../footer.jsp"/>
    </footer>
</table>
</section>
</body>
</html>