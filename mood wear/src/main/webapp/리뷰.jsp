<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ۼ�</title>
    <link rel="stylesheet" href="css/review.css" type="text/css">
</head>
<body>
<section>
    <article class="review_article">
      <form action="">
        <div class="head">
          <b>���侲��</b>
            <img src="img/�ΰ� ����.png" alt="logo">
        </div>
        <div class="iteminfo">
          <img src="img/������ ���� ��弼����.png" alt="product" class="orderitem"> &emsp;
          <div class="orderiteminfo">
          <h3>������</h3>
          <p>
            ���� ��弼����<br>
            �� �� �ѿз�<br>
            100ml</p>
          </div>
        </div>
        <div class="contents">
          <p>���� ������� ������ �Ǵ� ������ ���並 �����ּ���.</p>
          <p><b>����� ���ҳ���?</b></p>
          <textarea name="" id="" cols="45" rows="8" placeholder="�ּ� 10�� �̻� �Է����ּ���"></textarea>
        </div>
	        <form action = "upload.jsp" method = "post" enctype = "multipart/form-data">
	         <input type = "file" name = "file" id="file"/>
	     	 </form>
        <div class="attach_photo">
          <img src="img/camera.png">&emsp;
          <label for="upload_file" id="fileupload">���� ÷���ϱ�</label>
        </div>
          <div class="worning">
            <b>��ǰ�� ������ ������ ÷���� ����� �뺸���� �����˴ϴ�.</b>
          </div>
          <input type="submit" value="���� ����ϱ�" id="reviewbtn">       
      </form>
    </article>
  </section>
</body>
</html>