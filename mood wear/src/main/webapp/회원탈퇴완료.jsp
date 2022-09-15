<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원탈퇴완료</title>
    <link rel="stylesheet" href="css/회원탈퇴완료.css">
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="aside.jsp"/>
    </aside>
    <section>
        <article>
            <form action="">
                    <h2>회원정보</h2>
                    <hr>
            <table class="userinfotbl">
                    <tr class="explain">
                        <td>
                        <p>MoodWear 회원탈퇴가 완료되었습니다</p><p>이용해 주셔서 감사합니다</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="button" id="home" onclick="location.href='main.jsp'">홈으로</button>
                        </td>
                    </tr>
            </table>
            </form>
        </article>
    </section>
</div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>