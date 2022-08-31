<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>주문조회</title>
    <link rel="stylesheet" href="css/주문조회.css">
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
	<div class="aside_section">
    <aside>
		<jsp:include page="aside.jsp"/>
    </aside>
   	<section>
        <article >
            <h2>주문조회</h2>
            <div class="inquiryselect">
                <span>
                    <img src="img/주문접수.png" alt="주문접수">
                    <p>주문접수</p>
                </span>
                
                <span><img src="img/꺽쇠.png" alt="꺽쇠" class="angle_bracket"></span>
                <span>
                    <img src="img/결제완료.png" alt="결제완료">
                    <p>결제완료</p>
                </span>
                <span><img src="img/꺽쇠.png" alt="꺽쇠" class="angle_bracket"></span>
                <span>
                    <img src="img/상품준비중.png" alt="상품준비중">
                    <p>상품준비중</p>
                </span>
            </div>
        </article>
        <article>
            <table class="ordertable">
                <tr>
                    <th>주문일자</th>
                    <th>상품</th>
                    <th>수량</th>
                    <th>주문금액</th>
                    <th>상태</th>
                </tr>
                <tr class="iteminfo">
                    <td rowspan="2">2022.07.15<br>
                        A00153542</td>
                    <td class="itemimg">
                        <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                        <p>Dior<br>
                            미스 디올 블루밍 부케<br>
                            오드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td>상품준비중</td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                        <p>Dior<br>
                            미스 디올 블루밍 부케<br>
                            오드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td>상품준비중</td>
                </tr>
                <tr>
            </table>
        </article>
        <article>
            <h3>지난접수내역</h3>
            <table class="ordertable">
                <tr>
                    <th>주문일자</th>
                    <th>상품</th>
                    <th>수량</th>
                    <th>주문금액</th>
                    <th>상태</th>
                </tr>
                <tr class="iteminfo">
                    <td rowspan="2">2022.07.15<br>
                        A00153542</td>
                    <td class="itemimg">
                        <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                        <p>Dior<br>
                            미스 디올 블루밍 부케<br>
                            오드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td><a href="review.html" class="toreview">리뷰작성</a></td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/디올.png" alt="블루밍부케" class="orderitem">&emsp;
                        <p>Dior<br>
                            미스 디올 블루밍 부케<br>
                            오드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td><a href="review.jsp" class="toreview">리뷰작성</a></td>
                </tr>
                <tr>
            </table>
        </article>
    </section>
    </div>

    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>