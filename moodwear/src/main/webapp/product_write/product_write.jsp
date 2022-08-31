<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>베스트 상품 등록</title>
    <link rel="stylesheet" href="../css/mwbrand.css" type="text/css">
</head>
<body>
    <header>
        <p>베스트 상품 </p> 
    </header>
    <form method="post" action="productWriteServlet" enctype="multipart/form-data">
    <section>
        <article class="product">
            <div class="left">
                <img src="../img/미리보기.png" id="img">
            </div>

            <div class="right">
                <p><input type="text" placeholder="브랜드명" id="pname" name="product_brand"></p>
                <p><input type="text" placeholder="상품명" id="pname" name="product_name"></p>
                <p><input type="text" placeholder="태그" name="product_tag1">&ensp;<input type="text" placeholder="태그" name="product_tag2">&ensp;<input type="text" placeholder="태그" name="product_tag3"></p>
                <p><input type="text" placeholder="용량" name="product_volume">&ensp;<input type="text" placeholder="가격" name="product_price"></p>
                <p>상품 이미지</p>
                <p><input type="file" id="pname" name="product_img"></p>
                <p>상품 설명</p>
                <p><textarea id="" cols="58" rows="5" name="product_info"></textarea></p>
                <p>태그 관련 이미지</p>
                <p><input type="file" class="timg" name="product_tagImg1"></p>
                <p><input type="file" class="timg" name="product_tagImg2"></p>
                <!-- <button id="correct" onclick="location.href='관리자-상품.html';">등록</button> -->
                <input type="submit" id="correct" value="등록">
                <hr> 
            </div>
        </article>
    </section>
    </form>
</body>
</html>