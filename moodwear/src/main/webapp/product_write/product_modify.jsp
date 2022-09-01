<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import = "product_write.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product_write.ProductDAO"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자(상품)리스트</title>
    <link rel="stylesheet" href="../css/mwbrand.css" type="text/css">
</head>
        <%
			ArrayList<Product> vlist = pMgr.getProductList();
		%>
<body>
		
    <header>
        <p>베스트 상품 </p> 
    </header>
    <form method="post" action="productWriteServlet" enctype="multipart/form-data">
    <section>
    	<%
		for(int i=0; i<vlist.size(); i++){
		Product regBean = vlist.get(i);
		%>
        <article class="product">
            <div class="left">
                <img src="../fileupload/<%=regBean.getProduct_img()%>" id="img">
            </div>

            <div class="right">
                <p><input type="text" placeholder="<%=regBean.getProduct_brand() %>" id="pname" name="product_brand"></p>
                <p><input type="text" placeholder="<%=regBean.getProduct_name() %>" id="pname" name="product_name"></p>
                <p><input type="text" placeholder="#<%=regBean.getProduct_tag1() %>" name="product_tag1">&ensp;<input type="text" placeholder="#<%=regBean.getProduct_tag2() %>" name="product_tag2">&ensp;<input type="text" placeholder="#<%=regBean.getProduct_tag3() %>" name="product_tag3"></p>
                <p><input type="text" placeholder="<%=regBean.getProduct_volume() %>ml(숫자만 입력)" name="product_volume">&ensp;<input type="text" placeholder="<%=regBean.getProduct_price() %>" name="product_price"></p>
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
			<%
			}
			%>
</html>