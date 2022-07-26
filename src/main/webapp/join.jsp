<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
    <link rel="stylesheet" href="css/join.css" type="text/css">
</head>
<body>
    <div class="form">
    <div class="head"><img src="img/로고 누끼(full).png" id="logo"></div>
        <div class="box">
        <div>
            <p><label for="id">아이디</label></p>
            <input type="search" id="id_can" autofocus placeholder="영어 5~10글자 이내" maxlength="10" ><button>중복확인</button>
            </div>
        <div>
            <p><label for="pw">비밀번호</label></p>
            <input type="password" class="can2" placeholder="8글자이상 권장">
        </div>
        <div>
            <p><label for="pw-ck">비밀번호 확인</label></p>
            <input type="search" class="can" placeholder="비밀번호를 재확인합니다">
        </div>
        <div>
            <p><label for="name">이름</label></p>
            <input type="search" class="can" maxlength="8">
        </div>
        <div>
            <p><label for="phone">휴대폰 번호</label></p>
            <input type="search" class="can" placeholder="숫자만 입력 (예. 01012345678)" maxlength="12">
        </div>
        <div>
            <p><label for="birth">생년월일</label></p>
            <input type="date" id="bir1">&ensp;
        <select class="bir2">
            <option value="choice">성별</option>
            <option value="female">여자</option>
            <option value="male">남자</option>
        </select>
        </div>
        <div>
            <p>본인 확인 이메일</p>
            <input type="url" class="can2">
        </div>
        <div>
            <button id="bt">회원가입하기</button>
            </div>
        </div>
    </div>
</body>
</html>