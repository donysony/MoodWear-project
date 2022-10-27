<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product.*" %>
<%@ page import="member.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<jsp:useBean id="memberDAO" class="member.MemberDAO"/>
<jsp:useBean id="productDAO" class="product.ProductDAO"/>
<%
	String userID = null;
	int cart_num = 0;
	int cart_quantity = 1;
	//장바구니에서 전체상품주문 클릭하면 넘어오는 값
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	if(request.getParameter("cart_num") != null){
		cart_num = Integer.parseInt(request.getParameter("cart_num"));
	}
	if(request.getParameter("cart_quantity") != null){
		cart_quantity = Integer.parseInt(request.getParameter("cart_quantity"));
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>주문정보확인</title>
    <link rel="stylesheet" href="../css/주문정보확인.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
</head>
<body>
    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="../aside.jsp"/>
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
                    <%
                    ArrayList<Cart> list = memberDAO.getOrderList(userID, cart_num);
                    DecimalFormat df = new DecimalFormat("#,###");//화폐기호 형식 지정
                    	if(!list.isEmpty()){
                    		for(int i=0; i<list.size();i++){
								int cart_product_num = list.get(i).getProduct_num();
                        		int quantity = list.get(i).getCart_quantity();
                        		//상품번호와 일치하는 정보 가져옴
                        		Product product = productDAO.getProductList(cart_product_num);
                                int volume = product.getProduct_volume();
                                String brand = product.getProduct_brand();
                                int price = Integer.parseInt(product.getProduct_price());
                                String name = product.getProduct_name();	
                    			
                    			%>
                    <tr>
                        <td><%=brand +" "+ name +" "+ volume +"ml"%></td>
                        <td><%=quantity %></td>
                        <td><%=df.format(price * quantity)+"원" %></td>
                    </tr>
                    			
           			<%
                    		}
                    	}
                    %>
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
        <%
        	String member_name = memberDAO.getMemberName(userID);
			Date today = new Date();
            SimpleDateFormat df2 = new SimpleDateFormat("yyyy.MM.dd");
        %>
                <h3>주문요약정보</h3>
                <table  class="order_summary">
                <tr>
                <th>주문번호</th>
                <td>A1234567899</td>
                </tr>
                <tr>
                <th>주문자명</th>
                <td><%=member_name %></td>
                </tr>
                <tr>
                <th>주문일자</th>
                <td><%=df2.format(today) %></td>
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
                <button type="button" id="cancellation" onClick="location.href='장바구니.jsp'">취소</button> &emsp;
                <button type="button" id="payment" onClick="location.href='주문완료.jsp'">결제하기</button>
            </div>

        
        </section>
</div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>