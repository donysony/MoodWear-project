<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import = "product.Product" %>
<%@ page import = "product.ProductDAO" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<jsp:useBean id="upbean" class ="product.Product"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 수정</title>
    <link rel="stylesheet" href="../css/mwbrand.css" type="text/css">
</head>
        <%
        int product_num =0;
        if(request.getParameter("product_num") != null){
        	product_num = Integer.parseInt(request.getParameter("product_num"));
        }
        Product product = pMgr.get_Product(product_num);
        System.out.println(product_num);
		%>

<body>
    <header>
        <p>상품 수정</p> 
    </header>
    <form method="post" action="product_modifyAction.jsp?product_num=<%=product_num %>" enctype="multipart/form-data">
    <section>
        <article class="product">
            <div class="left">
                <img src="../fileupload/<%=product.getProduct_img() %>" id="img">
            </div>
            <div class="right">
                <p><input type="text" placeholder="브랜드명(한글)" id="pname" name="product_brand" value="<%=product.getProduct_brand() %>"></p>
                <p><input type="text" placeholder="상품명(한글)" id="pname" name="product_name" value="<%=product.getProduct_name() %>"></p>
                <p><input type="text" placeholder="#태그1" name="product_tag1" value="<%=product.getProduct_tag1() %>">&ensp;<input type="text" placeholder="#태그2" name="product_tag2" value="<%=product.getProduct_tag2() %>">&ensp;<input type="text" placeholder="#태그3" name="product_tag3" value="<%=product.getProduct_tag3() %>"></p>
                <p><input type="text" placeholder="용량(숫자만 입력)" name="product_volume" value="<%=product.getProduct_volume() %>">&ensp;<input type="text" placeholder="가격(숫자만 입력)" name="product_price" value="<%=product.getProduct_price() %>"></p>
                <p>상품 이미지</p>
                <p><input type="file" id="pname" name="product_img" value="<%=product.getProduct_img() %>"></p>
                <p>상품 설명</p>
                <p><textarea id="" cols="58" rows="5" name="product_info" value="<%=product.getProduct_info() %>"></textarea></p>
                <p>태그 관련 이미지</p>
                <p><input type="file" class="timg" name="product_tagImg1" value="<%=product.getProduct_tagImg1() %>"></p>
                <p><input type="file" class="timg" name="product_tagImg2" value="<%=product.getProduct_tagImg2() %>"></p>
                <!-- <button id="correct" onclick="location.href='관리자-상품.html';">등록</button> -->
                <input type="submit" id="correct" value="수정">
                <hr> 

            </div>
        </article>
    </section>
    </form>
</body>

</html>