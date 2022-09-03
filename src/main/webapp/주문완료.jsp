<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>주문완료</title>

    <link rel="stylesheet" href="css/주문완료.css">
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
                    <h2>주문완료</h2>
                    <hr>
            <div class="userinfodiv">
                        <p>MoodWear를 이용해 주셔서 감사합니다</p><p>
                        고객님, 주문이 완료되었습니다</p>
                        <div class="order_number">        
                        <p>고객님이 주문하신 주문번호는</p>
                        <p><span id="ordernum">A1234567899</span> 입니다</p>
                        </div>
                        <p>주문내역 확인은 마이페이지의 '주문내역'에서 하실 수 있습니다</p>
                        <p id="essential">반드시 배송지를 등록해 주시길 바랍니다</p>
            </div>
            <div id="assign_address"><a href="배송지등록.jsp" >배송지등록 하러가기</a></div>

        </article>
    </section>
</div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>