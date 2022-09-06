<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.*" %>
<%@ page import="member.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="memberDAO" class="member.MemberDAO"/>
<jsp:useBean id="productDAO" class="product.ProductDAO"/>
<%
	String userID = null;
	int product_num = 00001;
	int cart_quantity = 1;
	//상세페이지에서 장바구니 클릭하면 넘어오는 값
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	if(request.getParameter("product_num") != null){
		product_num = Integer.parseInt(request.getParameter("product_num"));
	}
	if(request.getParameter("cart_quantity") != null){
		cart_quantity = Integer.parseInt(request.getParameter("cart_quantity"));
	}
%>
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
                        <%
                        //사용자 아이디로 장바구니에 담긴 상품들을 전부 리스트로 가져옴
                        ArrayList<Cart> list = memberDAO.getCartList(userID);
 
                                if(!list.isEmpty()){
                        	for(int i=0; i<list.size();i++){
                        		int cart_product_num = list.get(i).getProduct_num();
                        		
                        		//상품번호와 일치하는 정보 가져옴
                        		Product product = productDAO.getProductList(cart_product_num);
                        		String img = product.getProduct_img();
                                String info = product.getProduct_info();
                                int volume = product.getProduct_volume();
                                String brand = product.getProduct_brand();
                                String price = product.getProduct_price();
                                String name = product.getProduct_name();	
                                	
                        		%>
                        <tr class="orderinfo">
                            <td><input type="checkbox" name="product" class="select_checkbox" checked value="<%=list.get(i).getCart_num() %>" onclick="selectCheck()"></td>
                            <td class="itemimg"> 
                                <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                                <p><%=brand %><br>
                                    <%=name%><br>
                                    <%=volume +"ml"%></p></td>
                                    <td><input type="text" value="<%=String.format("%,d",Integer.parseInt(price))%>" id="price" readonly checked>원</td>
                                    <td class="count_change">
									<input type="text" value="<%=cart_quantity %>" id="quantity" readonly name="quantity">
									<input type="button" value="" id="upbtn" onclick="up()">
									<input type="button" value="" id="downbtn"onclick="down()">
										<button type="button" onclick="totalPrice()">변경</button>
                                    </td>
                                    <td></td>
                                    <td><span id="total"><%= String.format("%,d",Integer.parseInt(price) * cart_quantity) +" 원"%></span></td>
                                    <td>
                                        <button class="order">주문하기</button>
                                        <button class="delete">삭제</button>
                                        
                                    </td>
                                </tr>
                        <%
                        	}
                                }else{
                                	%>
						<tr id="none_address">
                    		<td colspan="7">
                    		<img src="img/bi_exclamation-circle.png">
                    		<p>담긴 상품이 없습니다</p>
                    		</td>
                    	</tr>
						<%
                                }

                        %>
                       <!-- <tr class="orderinfo">
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
                        --> 
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
            <button type="button" id="gobtn" onClick="location.href='main.jsp'">쇼핑계속하기</button>

        </p>
        <div class="wrapper">
            <button id="all_orderbtn" type="button" onClick="location.href='주문정보확인.jsp'">전체상품주문</button> &ensp;
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