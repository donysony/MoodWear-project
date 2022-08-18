<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>1:1문의내역</title>
    <link rel="stylesheet" href="../css/마이페이지_문의.css">
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
            <h2>1:1 문의내역</h2>
            <hr>
                <form action="" method="post" >
            <table class="shipping_address">
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성일</th>
                        <th>답변여부</th>
                        <th>수정</th>
                    </tr>
                    <tr>
                        <td colspan="6"></td>
                    </tr>
                    <tr >
                        <td>1</td>
                        <td>문의드립니다</td>
                        <td>2022.08.10</td>
                        <td>Y</td>
                        <td><button class="ship_update" type="button"onClick="location.href='배송지수정.jsp'">수정</button></td>
                    </tr>
                    <tr >
                        <td>1</td>
                        <td>문의드립니다</td>
                        <td>2022.08.10</td>
                        <td>Y</td>
                        <td><button class="ship_update" type="button"onClick="location.href='배송지수정.jsps'">수정</button></td>
                    </tr>
                </table> 
                    </form>
        </article>
       </section>
    </div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>