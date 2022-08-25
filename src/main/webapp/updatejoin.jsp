<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>updatejoin</title>
    <link rel="stylesheet" href="css/updatejoin.css">
    <script type="text/javascript" src="javascript/updatejoin.js">
    </script>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");//갑자기 든 의문 얘는 한글이 깨지지 않도록 해준다는데 의미가 뭘까?
	
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}
			
	Member memberinfo = new MemberDAO().getMember(userID);
	String phone = memberinfo.getMember_phone();
	String email = memberinfo.getMember_email();
%>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="aside.jsp"/>
    </aside>
    <section>
        <article>
            <h2>회원정보 수정</h2>
            <hr>
            <form action="updatejoinAction.jsp" method="post" name="memberupdateFrm">
            <table class="userinfo_updatetbl">
                    <tr>
                        <th>이름</th>
                        <td><%=memberinfo.getMember_name() %></td>
                    </tr>
                    <tr>
                        <th>아이디</th>
                        <td><%=memberinfo.getMember_id() %></td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td><input type="password" name="pw"></td>
                    </tr>
                    <tr>
                        <th>비밀번호 확인</th>
                        <td><input type="password" name="pwcheck" id=""></td>
                    </tr>
                    <tr>
                        <th>전화번호</th>
                        <td>
                            <select name="mPhone1" id="select_phone">
                                <option value="010" <%if(phone.substring(0,3).equals("010")) out.println("selected");%>>010</option>
                                <option value="011" <%if(phone.substring(0,3).equals("011")) out.println("selected");%>>011</option>
                                <option value="016" <%if(phone.substring(0,3).equals("016")) out.println("selected");%>>016</option>
                                <option value="017" <%if(phone.substring(0,3).equals("017")) out.println("selected");%>>017</option>
                                <option value="018" <%if(phone.substring(0,3).equals("018")) out.println("selected");%>>018</option>
                            </select><span>&ensp;-</span>
                            <input type="tel" name="mPhone2" id="" size="4" maxlength="4" autocomplete="off" value="<%=phone.substring(3,7)%>"><span>&ensp;-</span>
                            <input type="tel" name="mPhone3" id="" size="4" maxlength="4" autocomplete="off" value="<%=phone.substring(7)%>">
                        </td>
                    </tr>
                    <tr>
                        <th>생년월일</th>
                        <td><%=memberinfo.getMember_birth() %></td>
                    </tr>
                    <tr>
                        <th>이메일</th>
                        <td><input type="text" name="email1" id="" size="20" maxlength="15" autocomplete="off" value="<%=email.substring(0,email.indexOf("@"))%>"> @ 
                        <select name="email2" id="select_email">
                            <option value="naver.com" <%if(email.substring(email.indexOf("@")).equals("@naver.com")) out.println("selected");%>>naver.com</option>
                            <option value="gmail.com" <%if(email.substring(email.indexOf("@")).equals("@gmail.com")) out.println("selected");%>>gmail.com</option>
                            <option value="daum.com" <%if(email.substring(email.indexOf("@")).equals("@daum.com")) out.println("selected");%>>daum.com</option>
                            <option value="nate.com" <%if(email.substring(email.indexOf("@")).equals("@nate.com")) out.println("selected");%>>nate.com</option>
                            <option value="hanmail.net" <%if(email.substring(email.indexOf("@")).equals("@hanmail.net")) out.println("selected");%>>hanmail.net</option>
                        </select></td>
                    </tr>
                </table>
                <div class="buttondiv">
                    <button type="button" id="update" onclick="javascript:checkPw()">수정하기</button> &emsp;
                </div>
                </form>
            </article>
        </section>
    </div>
    <footer>
    <jsp:include page="footer.jsp"/>
    </footer>
</body>
</html>