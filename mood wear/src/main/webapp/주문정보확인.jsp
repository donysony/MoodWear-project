<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>주문정보확인</title>
    <link rel="stylesheet" href="css/주문정보확인.css">
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
            <h2>주문확인 및 결제정보 입력</h2>
            <hr>
            <table class="shipping_address">
                    <tr>
                        <th width="65%">상품명</th>
                        <th width="10%">수량</th>
                        <th width="15%">소계금액</th>
                    </tr>
                    <tr>
                        <td>미스 디올 블루밍 부케 모드 퍼퓸 100mL</td>
                        <td>1</td>
                        <td>250,000원</td>
                    </tr>
                    <tr>
                        <td>미스 디올 블루밍 부케 모드 퍼퓸 100mL</td>
                        <td>1</td>
                        <td>250,000원</td>
                    </tr>
                    <tr>
                        <td colspan="3"></td>
                    </tr>
                </table>
        </article>
        <article class="easy_pay"> 
                <form action="" method="post" >
                <h3>결제수단</h3>
                <ul>
                    <li>간편결제
                        <ul class="easypay_method">
                            <li><input type="radio" name="easypay_method" id="kakaopay"><label for="kakaopay">&ensp;카카오페이</label></li>

                        </ul>
                    </li>
                </ul>
                </form>

        </article>
        <article>
                <h3>주문요약정보</h3>
                <table  class="order_summary">
                <tr>
                <th>주문번호</th>
                <td>A1234567899</td>
                </tr>
                <tr>
                <th>주문자명</th>
                <td>박경선</td>
                </tr>
                <tr>
                <th>주문일자</th>
                <td>2022.08.08</td>
                </tr>
                <tr>
                <th>결제수단</th>
                <td>카카오페이</td>
                </tr>
                <tr>
                <th>결제금액</th>
                <td>500,000원</td>
                </tr>
                </table>
        </article>
            <div class="buttondiv">
                <button type="button" id="cancellation" onclick="location.href='장바구니.html'">취소</button> &emsp;
                <button type="button" id="payment" onclick="location.href='주문완료.html'">결제하기</button>
            </div>

        
        </section>
</div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>