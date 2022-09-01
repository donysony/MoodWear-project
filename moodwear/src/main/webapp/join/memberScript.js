function inputCheck() {
	if(document.regFrm.member_id.value == "") {
		alert("아이디를 입력해 주세요");
		document.regFrm.member_id.focus();
		return;
	}
	if(document.regFrm.member_pw.value == "") {
		alert("비밀번호를 입력해 주세요");
		document.regFrm.member_pw.focus();
		return;
	}
	if(document.regFrm.member_name.value == "") {
		alert("이름을 입력해 주세요");
		document.regFrm.member_name.focus();
		return;
	}
	if(document.regFrm.member_birth.value == "") {
		alert("생년월일을 입력해 주세요");
		document.regFrm.member_birth.focus();
		return;
	}
	if(document.regFrm.member_email.value == "") {
		alert("이메일을 입력해 주세요");
		document.regFrm.member_email.focus();
		return;
	}
	document.regFrm.submit();
}
function win_close(){
	self.close();
	}