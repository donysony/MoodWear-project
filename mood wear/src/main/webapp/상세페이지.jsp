<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��ǰ ��������</title>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="slick-1.8.1/slick/slick-theme.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Fjord+One&family=Gowun+Batang:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/��������.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="slick-1.8.1/slick/slick.js"></script>
    <script>
        $(function(){
            $('.multiple-items').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 3,
    // ������ Ŭ������ �°� ���� �����Ѵ�.
    prevArrow : $('.prevArrow'), 
  nextArrow : $('.nextArrow'), 
});
function onlyNumber() 
{ 
	var str = 100;
	var Mynum = document.getElementById("inptext").value;
	Mynum =Mynum.replace(/[^0-9]/g,'');
	document.getElementById("inptext").value=Mynum;
	var plus = document.getElementById("inptext").value=Mynum;
	if (plus < str)
	{
		document.getElementById("inptext").value=100;
	}else if (plus > 300)
	{
		document.getElementById("inptext").value=300;
	}
} 
$(document).ready(function(){
	var inp =$("input").val();
	$(".up").on("click",function(){
		setTimeout(function(){
		if (inp == 300)
		{
			inp;
		}
		else{inp ++;}
		$("input").val(inp);
		},500);
	});
	$(".down").on("click",function(){
		setTimeout(function(){
		if (inp == 100)
		{
			inp;
		}
		else if(inp <= 300)
		{
			inp--;
		}
		$("input").val(inp);
		},500);
	});
});


        })
    </script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery-user.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<body>
    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
        <section>
            <div class="topTotal">
            <div class="imgBox"> <!-- ���ʻ�� �̹��� �ڽ� -->
                <div class="prodImg">
                    <img src="img/���긮��.png">
                </div>
                <div class="tagImg">
                    <img src="img/��Ʈ����.png">
                    <img src="img/����.png">
                </div>
            </div>
            <div class="topRightBox">
                <h3>��Ÿ�����Ƴ뺧�� ��Ǫ�� �� �� �ڷ�</h3>
                <hr>
                <div class="prodTag">
                    <div>#��ŭ��</div>
                    <div>#������</div>
                    <div>#20��</div>
                </div>
                <table>
                    <tr>
                        <td>����</td>
                        <td colspan="3">103,500��</td>
                    </tr>
                    <tr>
                        <td>�뷮&emsp;&emsp;&emsp;</td>
                        <td colspan="3">100ml</td>
                    </tr>
                    <tr>
                        <td>������</td>
                        <td colspan="3">1000��</td>
                    </tr>
                    <tr>
                        <td>���� ��</td>
                        <td colspan="3">123��</td>
                    </tr>
                    <tr>
                        <td>����</td>
                        <td><button class="down" >-</button></td>
                        <td><input type="text" value="1" id="inptext"  onfocusout="onlyNumber();"/></td>
                        <td><button class="up">+</button></td>
                    </tr>
                </table>
                <div class="totalSum">
                    <div>�� ��ǰ �ݾ�(����)&emsp;</div>
                    <div>103,000��&nbsp;</div>
                    <div>(<input type="text" value="1" id="inptext"  onfocusout="onlyNumber();"/>��)</div>
                </div>
                <div class="button">
                    <div><a href="">�����ϱ�</a></div>
                    <div><a href="">��ٱ���</a></div>
                    <div><a href="" class="heart">��&nbsp;10</a></div>
                </div>
            </div>
        </div>
        </section>
        <section class="sameTag">
            <div>
        
        <br>
        <div class="miniNav">
            <div><a href="">������</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">���žȳ�</a>&emsp;</div>
            <div> I &emsp;</div>
            <div><a href="">��ǰ Q&A</a></div>
        </div>

        <hr style="width: 1200px; text-align: center; margin: auto;">
        <!-- ������ -->
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section class="detailInfo">
            <div class="detail_product">
                <img src="img/���� ���긮��.png" style="width: 600px;">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <h4>�ó����� �����ϰ� ����� ���� ����<br>����� ���� ��Ƽ���� ���ΰ� �ִ� �����̽��� ���� �ε巴�� ��ȭ�� �ݴϴ�.<br>
                    ���ϰ� ������� ���͸��� ��ο����� ����<br>������ ���� �±Ⱑ ���� ���� �ϸ� �÷�ó�� ��ȭ�Ӱ� ���̾�Ǿ� �������� ���Դϴ�.</h4>
                    <br>
                    <br>

                    <br>

            </div>
        <hr style="width: 1200px;">
        <br>
        <!-- ���žȳ� -->
        <h5><strong>��ǰ��������</strong><br><br>
��װ����� ��� ������ ���� ī��翡�� Ȯ����ȭ�� �帱 ���� �ֽ��ϴ�. Ȯ�ΰ������� ���� ī���� ����̳� Ÿ�� ������ �ֹ��� �������� �ֹ��� �ƴ϶�� 
�Ǵܵ� ��� ���Ƿ� �ֹ��� ���� �Ǵ� ����� �� �ֽ��ϴ�.<br>
<br>
������ �Ա��� ��ǰ ���� ����� PC��ŷ, ���ͳݹ�ŷ, �ڷ���ŷ Ȥ�� ����� ���࿡�� ���� �Ա��Ͻø� �˴ϴ�.<br>  
<br>
�� �ֹ��� �Է��� �Ա��ڸ�� �����Ա����� ������ �ݵ�� ��ġ�Ͽ��� �ϸ�, 3�� �̳��� �Աݵ��� ���� �ֹ��� �ڵ���� �˴ϴ�.<br>
<br>
�� �ڼ��� ������ Q&A �Խ��� �� �������� Ȯ�� �����մϴ�.<br></h5>
<hr style="width: 1200px;">
<!-- ����ı� -->
<h1 style="margin-bottom: 30px; color: rgb(100, 100, 100);">����ı�</h1>

<table class="review">
    <tr class="tr">
        <td class="td">����</td>
        <td class="tdName" style="width: 450px;">�ۼ���</td>
    </tr>
    <tr class="tr">
        <td class="td">���ƿ�</td>
        <td class="tdName">��*��</td>
    </tr>
    <tr class="tr">
        <td class="td">�ʹ� ���ƿ� �����մϴ�.</td>
        <td class="tdName">��*��</td>
    </tr>
    <tr class="tr">
        <td class="td">���� �ʹ� ���ƿ� ���嵵 ������ ����</td>
        <td class="tdName">��*��</td>
    </tr>
    <tr class="tr">
        <td class="td">���� �ູ������ ���!</td>
        <td class="tdName">��*��</td>
    </tr>
    
	<footer>
   		 <jsp:include page="../footer.jsp"/>
    </footer>
</table>
</section>
</body>
</html>