<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" href="css/style.css">
    <script>
    function check(){
    	if(document.loginFrm.member_id.value==""){
			alert("아이디를 입력하세요");
			document.loginFrm.member_id.focus();
			return;
    	}
    	if(document.loginFrm.member_pw.value == ""){
			alert("비밀번호를 입력하세요");
			document.loginFrm.member_pw.focus();
			return;
		}
		document.loginFrm.submit();
    	
    }
    </script>
</head>
<body>
<header></header>
<section>
    <article class="article1">
        <form action="loginAction.jsp" method="post" name="loginFrm">
            <table class="logintable">
                <tr align="center">
                    <td colspan="2">
                        <h1>로그인</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" placeholder="아이디" class="idpw" name="member_id">
                    </td>
                    <td rowspan="2">
                        <button id="loginbtn" onclick="javascript:check()" type="button">로그인</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" placeholder="비밀번호" class="idpw" name="member_pw"><br>
                    </td>
                </tr>
                <tr>
                    <td class="idpwsearch">
                        <a href="searchID.jsp" class="ex">아이디찾기</a> &nbsp;
                        <a href="searchPW.jsp" class="ex">비밀번호찾기</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
            </table>
                <div align="center" class="snslogo">
                    <span class="ex">카카오톡 로그인</span> &emsp;
                    <img src="img/kakaotalk_logo.png" alt="kakaologo" id="kakaologo">
                </div>
                    <hr>
                    <p align="center" class="ex">아직 <span id="logofont">moodwear</span>의 회원이 아니신가요?</p>
                    <p align="center">
                        <input type="button" value="회원가입하기" id="signupbtn" onclick="location.href='join.jsp'">
                    </p>
        </form>

    </article>
</section>
<footer></footer>



</body>
</html>