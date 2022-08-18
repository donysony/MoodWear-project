<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>상품문의</title>

    <link rel="stylesheet" href="../css/상품문의.css">
</head>
<body>
    <header>
		<jsp:include page="../header.jsp"/>    
    </header>
 <section>
        <article class="inquiry_article">
                <form action="writeAction.jsp" method="post">
                    <h2>1:1문의</h2>
            <table class="inquirytable">
                    <tr class="info">
                        <td class="headtitle">비밀번호</td>
                        <td><input type="password" name="board_pw" id="" required></td>
                    </tr>
                    <tr class="title">
                        <td class="headtitle">제목</td>
                        <td><input type="text" maxlength="50" name="board_title"></td>
                    </tr>
                    <tr class="contents">
                        <td class="headtitle">내용</td>
                        <td ><textarea maxlength="2048" name="board_content"></textarea></td>
                        
                    </tr>

                </table>
            <div class="buttondiv">
                <input type="submit" id="registration" value="등록하기"> &emsp;
                <button type="button" id="list" onclick="location.href='boardlist.jsp'">목록보기</button>
            </div>
            </form>
        </article>
    </section>
    <footer>

    </footer>
</body>
</html>