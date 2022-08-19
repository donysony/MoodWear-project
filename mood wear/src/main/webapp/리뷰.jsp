<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>리뷰 작성</title>
    <link rel="stylesheet" href="css/review.css" type="text/css">
</head>
<body>
<section>
    <article class="review_article">
      <form action="">
        <div class="head">
          <b>리뷰쓰기</b>
            <img src="img/로고 누끼.png" alt="logo">
        </div>
        <div class="iteminfo">
          <img src="img/조말론 런던 우드세이지.png" alt="product" class="orderitem"> &emsp;
          <div class="orderiteminfo">
          <h3>조말론</h3>
          <p>
            런던 우드세이지<br>
            오 드 뚜왈렛<br>
            100ml</p>
          </div>
        </div>
        <div class="contents">
          <p>다음 사람에게 도움이 되는 생생한 리뷰를 남겨주세요.</p>
          <p><b>어떤점이 좋았나요?</b></p>
          <textarea name="" id="" cols="45" rows="8" placeholder="최소 10자 이상 입력해주세요"></textarea>
        </div>
	        <form action = "upload.jsp" method = "post" enctype = "multipart/form-data">
	         <input type = "file" name = "file" id="file"/>
	     	 </form>
        <div class="attach_photo">
          <img src="img/camera.png">&emsp;
          <label for="upload_file" id="fileupload">사진 첨부하기</label>
        </div>
          <div class="worning">
            <b>상품과 무관한 사진을 첨부한 리뷰는 통보없이 삭제됩니다.</b>
          </div>
          <input type="submit" value="리뷰 등록하기" id="reviewbtn">       
      </form>
    </article>
  </section>
</body>
</html>