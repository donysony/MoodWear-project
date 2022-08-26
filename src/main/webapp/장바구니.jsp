<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>장바구니</title>
    <link rel="stylesheet" href="css/장바구니.css">
    <script src="javascript/장바구니.js"></script>
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>

    <section>
        <form action="" method="post" >
            <article>
                <h1>장바구니</h1>
                <table class="ordertable">
                        <tr>
                            <td colspan="7"></td>
                        </tr>
                        <tr>
                            <th><input type="checkbox" name="select" onclick="checkBox(this)"></th>
                            <th>상품정보</th>
                            <th>판매가</th>
                            <th>수량</th>
                            <th>적립금</th>
                            <th>합계</th>
                            <th>선택</th>
                        </tr>
                        <tr class="orderinfo">
                            <td><input type="checkbox" name="product1" class="select_checkbox" checked></td>
                            <td class="itemimg"> 
                                <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                                <p>Dior<br>
                                    미스 디올 블루밍 부케<br>
                                    오드 퍼퓸<br>
                                    100ml</p></td>
                                    <td><input type="text" value="250000" id="price" readonly checked>원</td>
                                    <td class="count_change">
									<input type="text" value="1" id="quantity" readonly name="quantity">
									<input type="button" value="" id="upbtn" onclick="up()">
									<input type="button" value="" id="downbtn"onclick="down()">
										<button type="button" onclick="totalPrice()">변경</button>
                                    </td>
                                    <td></td>
                                    <td><span id="total">250000원</span></td>
                                    <td>
                                        <button class="order">주문하기</button>
                                        <button class="delete">삭제</button>
                                        
                                    </td>
                                </tr>
                        <tr class="orderinfo">
                            <td><input type="checkbox" name="product2" class="select_checkbox" checked></td>
                            <td class="itemimg"> 
                                <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                                <p>Dior<br>
                                    미스 디올 블루밍 부케<br>
                                    오드 퍼퓸<br>
                                    100ml</p></td>
                                    <td>250,000원</td>
                                    <td class="count_change">
                                        <span>1</span>
                                        <input type="button" value="" class="upbtn">
                                        <input type="button" value="" class="downbtn">
                                        <button>변경</button>
                                    </td>
                                    <td></td>
                                    <td>250,000원</td>
                                    <td>
                                        <button class="order">주문하기</button>
                                        <button class="delete">삭제</button>
                                        
                                    </td>
                        </tr>
                        <tr>
                            <td colspan="7" id="shippingstate"> <p>[기본배송]</p></td>
                        </tr>
                        <tr>
                            <td colspan="7" id="cartreset"><input type="reset" value="장바구니비우기" ></td>
                        </tr>
                </table>
        </article>
        
        
        <article class="payment_due">
            <div id="payment">
                <span>결제예정금액</span>
            </div>
            <div id="payment_value">
                <span>250,000원</span>
                
            </div>
        </article>
        <article class="orderbutton">
        <p>
            <button id="gobtn">쇼핑계속하기</button>
        </p>
        <div class="wrapper">
            <button id="all_orderbtn" type="button" onclick="location.href='주문정보확인.html'">전체상품주문</button> &ensp;
            <button id="select_orderbtn">선택주문</button>
        </div>
        </article>
    </form>
    <article class="useinfo">
        <div>
            장바구니 이용안내<br>
    해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.<br>
    해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.<br>
    선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.<br>
    [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.<br>
    장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.<br>
    파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.<br>
        </div>
    </article>
    

    
</section>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>