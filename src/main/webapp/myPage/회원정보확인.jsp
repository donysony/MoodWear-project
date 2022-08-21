<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.*" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
	}
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다')");
		script.println("location.href='../login/login.jsp");
		script.println("</script>");
		
	}
	//Member객체에 userID값과 동일한 회원의 정보를 담아 memberinfo인스턴스 생성
	Member memberinfo = new MemberDAO().getMember(userID);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원정보확인</title>
    <script>
    function checkPw(pw){
    	if(document.memberInfoFrm.pw.value==""){
    		alert("비밀번호를 입력하세요");
    		document.memberInfoFrm.pw.focus();
    		return ;
    	}else{
    		if(document.memberInfoFrm.pw.value == pw){
    			alert("확인되었습니다");
    			document.memberInfoFrm.action="updatejoin.jsp";
    			document.memberInfoFrm.submit();
    		}else if(document.memberInfoFrm.pw.value != pw){
    			alert("비밀번호가 다릅니다");
    			document.memberInfoFrm.pw.focus();
    			return ;
    		}
    	}
    }
    </script>

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
            <form action="updatejoin.jsp" method="post" name="memberInfoFrm">
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
                        <td class="idpw"><input type="text" value="<%=userID %>" name="id" readonly ></td>
                    </tr>
                    <tr>
                        <th>비밀번호 </th>
                        <td class="idpw"><input type="password" class="inputbox" name="pw"></td>
                    </tr>
            </table>
            <div class="buttondiv">
                <button type="button" id="check" onclick="javascript:checkPw('<%=memberinfo.getMember_pw()%>')">확인</button> &emsp;
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