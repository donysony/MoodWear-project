<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>searchPW</title>
    <link rel="stylesheet" href="css/style.css">
    <script>
	function check(){
		if(document.searchPw.id.value == ""){
			alert("아이디를 입력하세요");
			document.searchID.name.focus();
			return;
		}
		if(document.searchPw.phone.value == ""){
			alert("전화번호를 입력하세요");
			document.searchID.phone.focus();
			return;
		}
		document.searchPw.submit();
		
	}
</script>
</head>
<body>
    <header></header>
    <section>
        <article class="article1">
        <form action="searchPwProc.jsp" method="post" name="searchPw">
            <div>
            <h1>비밀번호 찾기</h1>
            <p class="ex">회원가입시 입력하신 아이디와 전화번호로 비밀번호를 찾을 수 있습니다 </p>
            <p >
                <input type="text" placeholder="아이디" class="box1" name="id">
            </p>
            <p >
                <input type="text" placeholder="전화번호" class="box1" name="phone">
            </p>
            <p >
                <button type="button" class="box2" onclick="javascript:check()">비밀번호 찾기</button>
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