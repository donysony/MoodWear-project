<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="css/notice.css">
    <title>notice</title>
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
    <section>
        <article class="article_notice" >
            <div>
            <h1>공지사항</h1>
            <table class="tablenotice">
                <tr>
                    <th class="title">제목</th>
                    <td class="bordertd">&emsp; [필독] 교환 및 환불 신청 전 확인해주세요!!</td>
                </tr>
                <tr>
                    <th class="title">작성자</th>
                    <td class="bordertd"> &emsp; 관리자</td>
                </tr>
                <tr class="date">
                    <td colspan="2" class="bordertd"><b>작성일</b> : 2022.07.27  <b>조회수</b> : 1988</td>
                </tr>
                <tr>
                    <td colspan="2" ># 교환 및 반품이 가능한 경우 #<br>

                        ◈ 단순변심에 의한 교환/반품<br>
                        
                        　▶ 상품 배송완료일 기준으로 14일 이내<br>
                        
                        　　※ 단, 향수 특성상 포장을 개봉하였거나 훼손 및 사용하여 상품가치가 상실된 경우에는 교환/반품이 불가합니다.<br>
                        
                        　　 ( ex. 밀봉된 겉비닐 or 단상자 or 씰링 훼손, 상품 개봉/분사 사용 흔적이 있을 경우)<br>
                        
                        　　　- 증정된 샘플이 함께 회수되지 않을 경우, 반품이 불가할 수 있습니다.</td>
                </tr>
                <tr>
                    <td id="bottomtr" class="bordertd"></td>
                </tr>
            </table>
            
            
            <button type="button" id="Tolist" onclick="location.href='board.html'">목록보기</button>
        </div>
            <table class="next">
                <tr>
                    <th class="nextcontent">다음글</th>
                    <td class=""></td>
                </tr>
            </table>



        </article>
    </section>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>