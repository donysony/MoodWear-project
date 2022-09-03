	function checkPw(){
		frm = document.memberupdateFrm;
		if(frm.pw.value==""){
			alert("비밀번호를 입력하세요");
			frm.pw.focus();
			return;
		}if(frm.pwcheck.value==""){
			alert("비밀번호 재확인");
			frm.pwCheck.focus();
			return;
		}if(frm.pwcheck.value != frm.pw.value){
			alert("비밀번호가 일치하지 않습니다");
			frm.pwcheck.value=="";
			frm.pwcheck.focus();
			return;
		}
		frm.submit();
	}