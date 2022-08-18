<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="../css/배송지수정.css">
    <title>배송지수정</title>
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
            <h2>배송지 수정</h2>
            <hr>
            <form action="">
            <table class="addressinfo_updatetbl">
                    <tr>
                        <th>배송지명</th>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <th>받는사람</th>
                        <td><input type="text" name="" id=""></td>
                    </tr>
                    <tr>
                        <th>연락처</th>
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
                        <th>주소</th>
                        <td class="address">
                            <input type="text">&ensp;
                            <input type="button" value="우편번호" class="zip_code"><br>
                            <input type="text" class="address_box"><br>
                            <input type="text" class="address_box"><br>
                            <span id="box">
                            <input type="checkbox" name="" id=""><span>&ensp;기본배송지로 선택</span></span>
                        </td>

                </table>
                <div class="buttondiv">
                    <button type="button" id="update">수정하기</button> &emsp;
                    <button type="button" id="cancellation">취소</button>
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