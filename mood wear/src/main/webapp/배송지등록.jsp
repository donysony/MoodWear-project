<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/��������.css">
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
		        	
		        	// ���θ��ּҿ�����
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
<title>����� ���</title>
</head>
<body>
	    <div class="aside_article">
        <aside>
            <a href="mypage.jsp"><h1>����������</h1></a>
            <ul class="aside">
                <li><a href="�ֹ���ȸ.jsp">�ֹ� ��ȸ</a></li>
                <li><a href="��ٱ���.jsp">��ٱ���</a></li>
                <li><a href="review.jsp">����</a></li>
                <li><a href="���ƿ�.jsp">���ƿ�</a></li>
                <li><a href="�ϴ��Ϲ��ǳ���.jsp">1:1���ǳ���</a></li>
                <li><a href="ȸ������ Ȯ��.jsp">ȸ������ ����</a></li>
                <li><a href="����ּҷϰ���.jsp">����� ����</a></li>
                <li><a href="ȸ��Ż��.jsp">ȸ�� Ż��</a></li>
            </ul>
        </aside>
    <section>
        <article>
            <h2>����� ���</h2>
            <hr>
            <form action="">
            <table class="addressinfo_updatetbl">
                    <tr>
                        <th>�������</th>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <th>�޴»��</th>
                        <td><input type="text" name="" id=""></td>
                    </tr>
                    <tr>
                        <th>����ó</th>
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
                        <th>�ּ�</th>
                        <td class="address">
                            <input type="address" id="postcode">&ensp;
                            <input type="button" value="�����ȣ" class="zip_code" onClick="findAddr()"><br>
                            <input type="text" class="address_box" id="addr"><br>
                            <input type="text" class="address_box" id="detailAddr" placeholder="���ּҸ� �־��ּ���."><br>
                            <span id="box"><input type="checkbox" name="" id="default_address"><span>&ensp;�⺻������� ����</span></span>
                        </td>
                </table>
                <div class="buttondiv">
                    <button type="button" id="update">����ϱ�</button>&emsp;
                    <button type="button" id="cancellation">���</button>
                </div>
                </form>
        </article>
    </section>
</div>
</body>
</html>