<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
<title>searchID</title>
</head>
<body>
    <header></header>
    <section>
        <article class="article1">
        <form action="searchIDProc.jsp" method="post">
            <div>
            <h1>아이디 찾기</h1>
            <p class="ex">회원가입시 입력하신 이름과 전화번호로 아이디를 찾을 수 있습니다 </p>
            <p >
                <input type="text" placeholder="이름" class="box1" name="name">
            </p>
            <p >
                <input type="password" placeholder="전화번호" class="box1" name="phone">
            </p>
            <p >
                <button type="button" class="box2">아이디 찾기</button>
            </p>
            <p >
                <input type="button" value="로그인" class="box3" onclick="location.href='login.jsp'">
            </p>
        </div>
        </form>
        </article>
    </section>
    <footer></footer>
</body>
</html>