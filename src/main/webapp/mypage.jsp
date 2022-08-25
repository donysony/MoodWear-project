<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
    <link rel="stylesheet" href="css/mypage.css">
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
        <article>
            <div class="title">
            <h2>주문조회</h2>
            <h4><a href="주문조회.jsp">더보기&gt;</a></h4>
            </div>
            <table class="ordertable">
                <tr>
                    <td>2022.07.25</td>
                    <td>미스디올 블루밍부케</td>
                    <td>2022.07.18</td>
                    <td>상품준비중</td>
                </tr>
            </table>
        </article>
        <article class="article_like">
            <div class="title">
            <h2>좋아요</h2>
            <h4><a href="좋아요.jsp">더보기&gt;</a></h4>
            </div>
            <hr>
            <div class="container">
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="cart"></span>
                <span class="like"></span>
            </div>
            <p><a href="#">블루밍부케</a></p>
            </div>
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="cart"></span>
                <span class="like"></span>
                </div>
                <p><a href="#">블루밍부케</a></p>
            </div>
            <div class="like_cart">
            <img src="img/디올.png" alt="블루밍부케" class="likeimg">
                <div class="wrapper">
                <span class="cart"></span>
                <span class="like"></span>
                </div>
                <p><a href="#">블루밍부케</a></p>
            </div>
        </div>
            
    </article>
    <article>
        <div class="title">
            <h2>1:1 문의내역</h2>
            <h4><a href="마이페이지_문의.jsp">더보기&gt;</a></h4>
        </div>
        <hr>
        <div class="inquirynotice">
        <img src="img/bi_exclamation-circle.png" alt="경고">
        <p>문의하신 기록이 없습니다</p>
        </div>

        <table class="table_inquiry">
            <tr class="tablehead">
                <th width="5%">번호</th>
                <th width="15%">상품정보</th>
                <th width="15%">카테고리</th>
                <th width="35%">제목</th>
                <th >답변여부</th>
                <th>작성일</th>
                <th>조회수</th>
            </tr>
            <tr class="tabletr">
                <td>2</td>
                <td>상품문의</td>
                <td class="inquiry_ans"><a href="inquiry.jsp">문의합니다<img src="img/ei_lock.png" alt="잠금" ></a></td>
                <td>N</td>
                <td>2022.07.27</td>
                <td>1</td>
            </tr>
            <tr class="tabletr">
                <td>1</td>
                <td>상품문의</td>
                <td class="inquiry_ans"><a href="inquiry.jsp">문의합니다<img src="img/ei_lock.png" alt="잠금"><span id="answercount">[1]</span></a></td>
                <td>Y</td>
                <td>2022.07.27</td>
                <td>1</td>
            </tr>
        </table>

        </article>
    </section>
</div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>