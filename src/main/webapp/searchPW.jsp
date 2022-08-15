<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchPW</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header></header>
    <section>
        <article class="article1">
        <form action="searchPWProc.jsp" method="post">
            <div>
            <h1>비밀번호 찾기</h1>
            <p class="ex">회원가입시 입력하신 아이디와 전화번호로 비밀번호를 찾을 수 있습니다 </p>
            <p >
                <input type="text" placeholder="아이디" class="box1">
            </p>
            <p >
                <input type="password" placeholder="전화번호" class="box1">
            </p>
            <p >
                <button type="button" class="box2">비밀번호 찾기</button>
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