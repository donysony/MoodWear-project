<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>review</title>
    <link rel="stylesheet" href="css/review.css" type="text/css">
    <script src="javascript/review.js"></script>
</head>
<body>
  <header></header>
  <section>
    <article class="review_article">
      <form action="">
        <div class="head">
          <b>리뷰쓰기</b>
            <img src="img/로고 누끼.png" alt="logo">
        </div>
        <div class="iteminfo">
          <img src="img/디올.png" alt="" class="orderitem"> &emsp;
          <div class="orderiteminfo">
          <h3>Dior</h3>
          <p>
            미스 디올 블루밍 부케<br>
            오드 퍼퓸<br>
            100ml</p>
          </div>
        </div>
        <div class="contents">
          <p>다음 사람에게 도움이 되는 생생한 리뷰를 남겨주세요.</p>
          <p><b>어떤점이 좋았나요?</b></p>
          <textarea name="" id="" cols="47" rows="8" placeholder="최소 10자 이상 입력해주세요"></textarea>
        </div>
        <div class="boxwrapper">
          <div class="box">
            <label for="upload_file">
              <img src="img/plus.png" alt="">
            </label>
          </div>
          <div class="box">
            <label for="upload_file">
              <img src="img/plus.png" alt="">
            </label>
          </div>
          <div class="box">
            <label for="upload_file">
              <img src="img/plus.png" alt="">
            </label>
          </div>
        </div>
        <div class="attach_photo">
          <img src="img/camera.png">&emsp;
          <label for="upload_file" id="fileupload">사진 첨부하기</label>
          <input type="file" id="upload_file">
        </div>
          <div class="worning">
            <b>상품과 무관한 사진을 첨부한 리뷰는 통보없이 삭제됩니다.</b>
          </div>

          <input type="submit" value="리뷰 등록하기" id="reviewbtn">
        
      </form>
    </article>
  </section>
  <footer></footer>



</body>
</html>