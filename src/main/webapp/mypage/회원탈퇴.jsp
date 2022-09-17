<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="member.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원정보확인</title>
    <script src="../javascript/jquery-3.6.0.min.js"></script>
    <script src="../javascript/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="../css/회원탈퇴.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <script>
    function checkPw(member_pw){
/*     	var form1 = $("#form").serialize(); //직렬화 : 객체를 데이터 스트림으로 만듬, 바이트 형태로 바꾸는것 #form폼의 id
    	console.log(form1);
    	$.ajax({
    		type:"post",
    		url:"회원탈퇴완료.jsp",
    		data:form1,
    		dataType:'json',
    		success:function(data){
    			alert("success");
    			console.log(data);
    		},
    		error:function(request, status, error){
    			console.log("code:"+request.status+"\n message:"+request.responseText+"\n error:"+error)
    			
    		}
    	}) */

         var dw = document.withdrawalFrm;
    	 var userID = dw.member_id.value; //로그인한 회원 아이디
        if(dw.memberPw.value==""){
            alert("비밀번호를 입력하세요");
            dw.memberPw.focus();
            return;
        }
        if(dw.memberPw.value==member_pw){
            var result = confirm('정말 탈퇴하시겠습니까?');
            if(result){
 				dw.submit();           	
            }else{
            	return;
            }
            
        }else{
            alert("비밀번호가 일치하지 않습니다");
            history.back();
        }
        
         
    }
    function sendPost(url, params){
    	var form = document.createElement('form');
    	form.setAttribute('method','post');//post방식 전송
    	form.setAttribute('action', url) //데이터 전송할 url
    	document.charset="utf-8";
    	
    }
    
    
/*     $("#list").click(function(){ //id가 list인 버틀 클릭시 함수 실행
    	var dropout_input = $("#dropout_input").val(); //input태그 (id="dropout_input")에 입력한 값을 dropout_input에 넣음
    	
    	var f = document.createelement("form"); //form 엘리먼트 생성
    	f.setAttribute("method", "post"); //method속성을 post로 설정
    	f.serAttribute("action", "MemberWithdrawal"); //submit했을 때 무슨 동작을 할것인지 설정
    	document.body.appendChild(f);//현재페이지에 form 엘리먼트 추가
    	
    	var i = document.createElement("input"); //input요소 생성
    	i.setAttribute("type","hidden") //type속성을 hidden으로 설정
    }) */
    </script>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}
			
	Member memberinfo = new MemberDAO().getMember(userID);
	String phone = memberinfo.getMember_phone();
	String email = memberinfo.getMember_email();
%>

    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="../aside.jsp"/>
    </aside>
    <section>
        <article>
            <form action="MemberWithdrawal" method="post" name="withdrawalFrm"id="form">
            
                    <h2>회원탈퇴</h2>
                    <hr>
            <table class="userinfotbl">
                    <tr class="explain">
                        <th>아이디</th>
                        <td><%=memberinfo.getMember_id() %></td>
                    </tr>
                    <tr>
                        <th>연락처</th>
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
            <table class="dropouttbl">
                <tr>
                    <td colspan="2">탈퇴를 원하시면 비밀번호를 입력해주세요</td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td>
                        <input type="password" name="memberPw" id="dropout_input"> &emsp;<button type="button" id="dropout" onClick="javascript:checkPw(<%=memberinfo.getMember_pw()%>)">회원탈퇴</button>
                        <input type="hidden" name="member_id" value="<%=userID %>">
                        </td>
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