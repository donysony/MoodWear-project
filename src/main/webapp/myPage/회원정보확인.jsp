<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원정보확인</title>

    <link rel="stylesheet" href="../css/회원정보확인.css">
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
            <form action="">
                    <h2>회원정보</h2>
                    <hr>
            <table class="userinfotbl">
                    <tr class="explain">
                        <td colspan="2">
                        <p>회원님의 개인정보 보호를 위해</p><p>비밀번호를 한번 더 입력해주세요</p>
                        </td>
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td class="idpw">perfume</td>
                    </tr>
                    <tr>
                        <th>비밀번호 </th>
                        <td class="idpw"><input type="password" class="inputbox"></td>
                    </tr>
            </table>
            <div class="buttondiv">
                <button type="button" id="check" onclick="location.href='updatejoin.html'">확인</button> &emsp;
                <button type="button" id="cencellation">취소</button>
            </div>
            </form>
        </article>
    </section>
</div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>