<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ֹ���ȸ</title>
<link rel="stylesheet" href="css/�ֹ���ȸ.css">
   <script>
      var new_window_width = 525;
      var new_window_height = 790;
      var positionX = ( window.screen.width / 2 ) - ( new_window_width / 2 );
      var positionY = ( window.screen.height / 2 ) - ( new_window_height / 2 );
      function new_window() {
        window.open(
          "����.jsp",
          "���� �ۼ�",
          "width=" + new_window_width + ", height=" + new_window_height + ", top=" + positionY + ", left=" + positionX
        );
      }
    </script>
</head>
<body>
<div class="aside_section">
    <aside>
        <a href="mypage.html"><h1>����������</h1></a>
        <ul class="aside">
            <li><a href="�ֹ���ȸ.jsp">�ֹ� ��ȸ</a></li>
            <li><a href="��ٱ���.jsp">��ٱ���</a></li>
            <li><a href="���ƿ�.jsp">���ƿ�</a></li>
            <li><a href="�ϴ��Ϲ��ǳ���.jsp">1:1���ǳ���</a></li>
            <li><a href="ȸ������ Ȯ��.jsp">ȸ������ ����</a></li>
            <li><a href="����ּҷϰ���.jsp">����� ����</a></li>
            <li><a href="ȸ��Ż��.jsp">ȸ�� Ż��</a></li>
        </ul>

    </aside>
    <section>
        <article >
            <h2>�ֹ���ȸ</h2>
            <div class="inquiryselect">
                <span>
                    <img src="img/�ֹ�����.png" alt="�ֹ�����">
                    <p>�ֹ�����</p>
                </span>
                
                <span><img src="img/����.png" alt="����" class="angle_bracket"></span>
                <span>
                    <img src="img/�����Ϸ�.png" alt="�����Ϸ�">
                    <p>�����Ϸ�</p>
                </span>
                <span><img src="img/����.png" alt="����" class="angle_bracket"></span>
                <span>
                    <img src="img/��ǰ�غ���.png" alt="��ǰ�غ���">
                    <p>��ǰ�غ���</p>
                </span>
            </div>
        </article>
        <article>
            <table class="ordertable">
                <tr>
                    <th>�ֹ�����</th>
                    <th>��ǰ</th>
                    <th>����</th>
                    <th>�ֹ��ݾ�</th>
                    <th>����</th>
                </tr>
                <tr class="iteminfo">
                    <td rowspan="2">2022.07.15<br>
                        A00153542</td>
                    <td class="itemimg">
                        <img src="img/���긮��.png" alt="���긮��" class="orderitem">&emsp;
                        <p>����<br>
                            ���긮��<br>
                            �� �� ��Ǿ<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000��</td>
                    <td>��ǰ�غ���</td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/���긮��.png" alt="���긮��" class="orderitem">&emsp;
                        <p>����<br>
                            ���긮��<br>
                            �� �� ��Ǿ<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000��</td>
                    <td>��ǰ�غ���</td>
                </tr>
                <tr>
            </table>
        </article>
        <article>
            <h3>������������</h3>
            <table class="ordertable">
                <tr>
                    <th>�ֹ�����</th>
                    <th>��ǰ</th>
                    <th>����</th>
                    <th>�ֹ��ݾ�</th>
                    <th>����</th>
                </tr>
                <tr class="iteminfo">
                    <td rowspan="2">2022.07.15<br>
                        A00153542</td>
                    <td class="itemimg">
                        <img src="img/���긮��.png" alt="���긮��" class="orderitem">&emsp;
                        <p>����<br>
                            ���긮��<br>
                            �� �� ��Ǿ<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000��</td>
                   <td>
					<button class="toreview" onclick="new_window();">�����ۼ�</button>
					</td>
                </tr>
                <tr class="iteminfo">

                    <td class="itemimg">
                        <img src="img/���긮��.png" alt="���긮��" class="orderitem">&emsp;
                        <p>����<br>
                            ���긮��<br>
                            �� �� ��Ǿ<br>
                            100ml</p>
                    </td>
                    <td>1</td>
                    <td>250,000��</td>
                    <td>
					<button class="toreview" onclick="new_window();">�����ۼ�</button>
					</td>
                </tr>
                <tr>
            </table>
        </article>
    </section>
    </div>
</body>
</html>