<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>주문조회</title>
<link rel="stylesheet" href="css/주문조회.css">
   <script>
      var new_window_width = 525;
      var new_window_height = 790;
      var positionX = ( window.screen.width / 2 ) - ( new_window_width / 2 );
      var positionY = ( window.screen.height / 2 ) - ( new_window_height / 2 );
      function new_window() {
        window.open(
          "리뷰.jsp",
          "리뷰 작성",
          "width=" + new_window_width + ", height=" + new_window_height + ", top=" + positionY + ", left=" + positionX
        );
      }
    </script>
</head>
<body>
<div class="aside_section">
    <aside>
        <a href="mypage.html"><h1>마이페이지</h1></a>
        <ul class="aside">
            <li><a href="주문조회.jsp">주문 조회</a></li>
            <li><a href="장바구니.jsp">장바구니</a></li>
            <li><a href="좋아요.jsp">좋아요</a></li>
            <li><a href="일대일문의내역.jsp">1:1문의내역</a></li>
            <li><a href="회원정보 확인.jsp">회원정보 수정</a></li>
            <li><a href="배송주소록관리.jsp">배송지 관리</a></li>
            <li><a href="회원탈퇴.jsp">회원 탈퇴</a></li>
        </ul>

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
                        <img src="img/가브리엘.png" alt="가브리엘" class="orderitem">&emsp;
                        <p>샤넬<br>
                            가브리엘<br>
                            오 드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td>상품준비중</td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/가브리엘.png" alt="가브리엘" class="orderitem">&emsp;
                        <p>샤넬<br>
                            가브리엘<br>
                            오 드 퍼퓸<br>
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
                        <img src="img/가브리엘.png" alt="가브리엘" class="orderitem">&emsp;
                        <p>샤넬<br>
                            가브리엘<br>
                            오 드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                   <td>
					<button class="toreview" onclick="new_window();">리뷰작성</button>
					</td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/가브리엘.png" alt="가브리엘" class="orderitem">&emsp;
                        <p>샤넬<br>
                            가브리엘<br>
                            오 드 퍼퓸<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000원</td>
                    <td>
					<button class="toreview" onclick="new_window();">리뷰작성</button>
					</td>
                </tr>
                <tr>
            </table>
        </article>
    </section>
    </div>
</body>
</html>