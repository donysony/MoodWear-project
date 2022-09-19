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
<body>
        <%
			ArrayList<Product> vlist = pMgr.getProductList();
		%>
    <header>
        <p>상품 리스트</p>
    </header>

    <section>
        <div class="btn">
            <button onclick="location.href='product_write.jsp';">추가</button>
            <button onclick="location.href='관리자-상품(삭제후).html';">삭제</button>
        </div>
    </section>
    <%
				for(int i=0; i<vlist.size(); i++){
				Product regBean = vlist.get(i);
		%>

    <section>
        <div class="product">
                <img src="../fileupload/<%=regBean.getProduct_img()%>" id="img">
        <div class="product_list">

                <p>상품번호:<%=regBean.getProduct_num() %></p>
                <p>상품명:<%=regBean.getProduct_name() %></p>
                <p>브랜드:<%=regBean.getProduct_brand() %></p>
                <p>태그1:#<%=regBean.getProduct_tag1() %></p>
                <p>태그2:#<%=regBean.getProduct_tag2() %></p>
                <p>태그3:#<%=regBean.getProduct_tag3() %></p>
                <p>용량:<%=regBean.getProduct_volume() %></p>
                <p>가격:<%=regBean.getProduct_price() %></p>
                <p>상품 설명:<%=regBean.getProduct_info() %></p>
                <p>상품 이미지:<%=regBean.getProduct_img() %></p>
		<button id="correct" onclick="location.href='product_modify.jsp';">수정</button>
        <%
			}
		%>
		</div>
		        </div>
                <p>태그 관련 이미지</p>
                
                <div class="tagimg">
                


                </div>
                
                


    </section>
    
</body>
</html>