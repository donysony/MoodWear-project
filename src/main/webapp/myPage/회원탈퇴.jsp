<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원정보확인</title>

    <link rel="stylesheet" href="../css/회원탈퇴.css">
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
                    <h2>회원탈퇴</h2>
                    <hr>
            <table class="userinfotbl">
                    <tr class="explain">
                        <th>
                            아이디
                        </th>
                        <td>
                            perfumes
                        </td>
                    </tr>
                    <tr>
                        <th>연락처</th>
                        <td>
                            <select name="mPhone1" id="">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                            </select><span>&ensp;-</span>
                            <input type="tel" name="mPhone2" id="" size="4" maxlength="4" autocomplete="off"><span>&ensp;-</span>
                            <input type="tel" name="mPhone3" id="" size="4" maxlength="4" autocomplete="off">
                        </td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="" id="" size="20" maxlength="15" autocomplete="off"> @ 
                        <select name="" id="">
                            <option value="">naver.com</option>
                            <option value="">gmail.com</option>
                            <option value="">daum.com</option>
                            <option value="">nate.com</option>
                            <option value="">hanmail.net</option>
                        </select></td>
                    </tr>

            </table>
            <table class="dropouttbl">
                <tr>
                    <td colspan="2">탈퇴를 원하시면 비밀번호를 입력해주세요</td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                        <input type="password" name="" id="dropout_input"> &emsp;<button type="button" id="dropout" onclick="location.href='회원탈퇴완료.jsp'">회원탈퇴</button></td>
                </tr>
            </table>
            </form>
            <div class="listdiv">
            <button type="button" id="list" onclick="location.href='main.jsp'">홈으로</button>
            </div>
        </article>
    </section>
</div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>