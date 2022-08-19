<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/배송지등록.css">
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
</script>
<title>배송지 등록</title>
</head>
<body>
	    <div class="aside_article">
        <aside>
            <a href="mypage.jsp"><h1>마이페이지</h1></a>
            <ul class="aside">
                <li><a href="주문조회.jsp">주문 조회</a></li>
                <li><a href="장바구니.jsp">장바구니</a></li>
                <li><a href="review.jsp">리뷰</a></li>
                <li><a href="좋아요.jsp">좋아요</a></li>
                <li><a href="일대일문의내역.jsp">1:1문의내역</a></li>
                <li><a href="회원정보 확인.jsp">회원정보 수정</a></li>
                <li><a href="배송주소록관리.jsp">배송지 관리</a></li>
                <li><a href="회원탈퇴.jsp">회원 탈퇴</a></li>
            </ul>
        </aside>
    <section>
        <article>
            <h2>배송지 등록</h2>
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
                            <input type="address" id="postcode">&ensp;
                            <input type="button" value="우편번호" class="zip_code" onClick="findAddr()"><br>
                            <input type="text" class="address_box" id="addr"><br>
                            <input type="text" class="address_box" id="detailAddr" placeholder="상세주소를 넣어주세요."><br>
                            <span id="box"><input type="checkbox" name="" id="default_address"><span>&ensp;기본배송지로 선택</span></span>
                        </td>
                </table>
                <div class="buttondiv">
                    <button type="button" id="update">등록하기</button>&emsp;
                    <button type="button" id="cancellation">취소</button>
                </div>
                </form>
        </article>
    </section>
</div>
</body>
</html>