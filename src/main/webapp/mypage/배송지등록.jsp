<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}
	//회원정보 가져오기
	Member memberinfo = new MemberDAO().getMember(userID);
	String phone = memberinfo.getMember_phone();
	String name= memberinfo.getMember_name();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="../css/배송지등록.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <title>배송지등록</title>
<script src="script.js" charset="utf-8" type="text/javascript"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript">
	function findAddr() {
		 new daum.Postcode({
		        oncomplete: function(data) {
		        	var road = data.roadAddress;
		        	var jibun = data.jibunAddress;
		        	var extra = '';
		        	
		        	document.getElementById('postcode').value = data.zonecode;
		        	
		        	// 도로명주소였을때
		        	if(road != ''){
		        		if(data.bname != ''){
		        			extra += data.bname;
		        		}
		        		if(data.buildingName != ''){
		        			extra += (extra != '' ? ', ' + data.buildingName : data.buildingName);
		        		}
		        		road += (extra != '' ? '(' + extra + ')' : '');
		        		document.getElementById('addr').value = road;
		        	} else if(jisbun != ''){
		        		document.getElementById('addr').value = jibun;
		        	}
		        	document.getElementById('detailAddr').focus();
		        }
		    }).open();
	}
	function win_close() {
		self.close();
	}
	function register(){
		fm = document.shippingFrm;
		if(fm.address_name.value==""){
			alert("배송지명을 입력하세요");
			fm.address_name.focus();
			return;
		}
		if(fm.address_reciever.value==""){
			alert("받는사람을 입력하세요");
			fm.address_reciever.focus();
			return;
		}
		if(fm.mPhone2.value==""){
			if(fm.Phone3.value==""){
				alert("전화번호를 입력하세요");
				fm.phone3.focus();
			return;
			}
			alert("전화번호를 입력하세요");
				fm.phone2.focus();
			return;
		}
		if(fm.address_zipcode.value==""){
			alert("우편번호를 검색해주세요");
				fm.address_zipcode.focus();
			return;
		}
		if(fm.address1.value==""){
			alert("주소를 입력하세요");
				fm.address1.focus();
			return;
		}
		if(fm.address2.value==""){
			alert("상세주소를 입력하세요");
				fm.address2.focus();
			return;
		}
		fm.submit();
	}
</script>
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
            <h2>배송지 등록</h2>
            <hr>
            <form action="배송지등록Action.jsp" method="post" name="shippingFrm">
            <table class="addressinfo_updatetbl">
                    <tr>
                        <th>배송지명</th>
                        <td><input type="text" name="address_name"></td>
                    </tr>
                    <tr>
                        <th>받는사람</th>
                        <td><input type="text" name="address_reciever" id="" value="<%=name%>"></td>
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
                        <th>주소</th>
                         <td class="address">
                            <input type="text" id="postcode" name="address_zipcode">&ensp;
                            <input type="button" class="zip_code" onClick="findAddr()" value="우편번호"><br>
                            <input type="text" name="address1" class="address_box" id="addr"><br>
                            <input type="text" name="address2" class="address_box" id="detailAddr" placeholder="상세주소를 넣어주세요."><br>
                            <span id="box"><input type="checkbox" name="" id="default_address"><span>&ensp;기본배송지로 선택</span></span>
                        </td>
                </table>
                <div class="buttondiv">
                    <button type="button" id="update" onclick="register()">등록하기</button> &emsp;
                    <button type="button" id="cancellation" onclick="history.back()">취소</button>
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