<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 반응형 웹을 위한 설정 -->
<meta name="viewport" content="width=divice-width", initial-scale="1">
    <link rel="stylesheet" href="../css/join.css" type="text/css">
<title>회원가입</title>
<script type="text/javascript" src="memberScript.js" charset="utf-8"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function idCheck(member_id) {
	frm = document.regFrm; 
	if(member_id == "") {
		alert("아이디를 입력해 주세요");
		frm.member_id.focus();
		return;
	}
	url = "idCheck.jsp?member_id=" + member_id;
	window.open(url, "IDCheck", "width=300,height=150");
}
</script>
</head>
<body>
    <div class="form">
    <form method="post" action="joinAction.jsp">
     <div class="head"><img src="../img/로고_글자.png" id="logo"></div>
        <div class="box">
        <div>
            <p><label for="id">아이디</label></p>
            <input type="text" required class="can2" name="member_id" autofocus>
            </div>
        <div>
            <p><label for="pw">비밀번호</label></p>
            <input type="password" class="can2" name="member_pw" placeholder="비밀번호">
        </div>
        <div>            <p><label for="pw-ck">비밀번호 확인</label></p>
            <input type="password" class="can" placeholder="비밀번호 확인">
        </div>
        <div>
            <p><label for="name">이름</label></p>
            <input type="search" class="can" name="member_name" maxlength="8">
        </div>
        <div>
            <p>본인 확인 이메일</p>
            <input type="email" class="can2" name="member_email" placeholder="선택 입력">
        </div>
        <div>
            <p><label for="birth">생년월일</label></p>
            <input type="date" id="bir1" name="member_birth">&ensp;
        </div>
        <div>
            <p><label for="phone">휴대폰 번호</label></p>
            <input type="search" class="can" name="member_phone" placeholder="숫자만 입력 (예. 01012345678)" maxlength="12">
        </div>
        <div>
            <button id="bt">회원가입하기</button>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>