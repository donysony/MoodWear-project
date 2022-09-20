<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 반응형 웹을 위한 설정 -->
<meta name="viewport" content="width=divice-width", initial-scale="1">
    <link rel="stylesheet" href="../css/mwlogin.css" type="text/css">
<title>관리자로그인</title>
</head>
<body>
<body>
    <header>
        <p>관리자 로그인</p>
    </header>
    	<form method="post" action="loginAction.jsp">
    <section class="one">
       <article>
            <p class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="admin_id" maxlength="20">
            </p>

            <p class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="admin_pw" maxlength="20">
            </p>
       </article>

        <div class="btn">
            <input type="submit" value="로그인" id="login">
        </div>
    </section>
    </form>
</body>
</html>