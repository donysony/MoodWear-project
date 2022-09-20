<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자(상품)</title>
    <link rel="stylesheet" href="../css/mwbrand.css" type="text/css">
</head>
<body>
    <header>
        <p>상품</p>
    </header>

    <section>
        <div class="btn">
            <button onclick="location.href='관리자-상품(추가후).html';">추가</button>
            <button onclick="location.href='관리자-상품(삭제후).html';">삭제</button>
        </div>
    </section>

    <section>
        <article class="product">
            <div class="left">
                <img src="../img/미리보기.png" id="img">
            </div>

            <div class="right">
                <p>브랜드명</p>
                <p>상품명</p>
                <p>태그</p>
                <p>용량 / 가격</p>
                <p>상품 설명</p>
                <p>태그 관련 이미지</p>
                <div class="tagimg">
                    <img src="../img/가브리엘.png" alt="tag">
                    <img src="../img/가브리엘.png" alt="tag">
                </div>
                <button id="correct" onclick="location.href='관리자-상품(수정후).html';">수정</button>
            </div>
        </article>
    </section>
</body>
</html>