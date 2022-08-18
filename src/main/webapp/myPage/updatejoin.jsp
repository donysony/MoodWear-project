<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>updatejoin</title>
    <link rel="stylesheet" href="../css/updatejoin.css">
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
            <h2>회원정보 수정</h2>
            <hr>
            <form action="">
            <table class="userinfo_updatetbl">
                    <tr>
                        <th>이름</th>
                        <td>박경선</td>
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td>perfume</td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인</th>
                        <td><input type="password" name="" id=""></td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>
                            <select name="mPhone1" id="select_phone">
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
                        <th>생년월일</th>
                        <td>1998.12.03</td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="" id="" size="20" maxlength="15" autocomplete="off"> @ 
                        <select name="" id="select_email">
                            <option value="">naver.com</option>
                            <option value="">gmail.com</option>
                            <option value="">daum.com</option>
                            <option value="">nate.com</option>
                            <option value="">hanmail.net</option>
                        </select></td>
                    </tr>
                </table>
                <div class="buttondiv">
                    <button type="button" id="update">수정하기</button> &emsp;
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