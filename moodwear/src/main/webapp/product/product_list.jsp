<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
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
        <form action="product_modify.jsp" method="get">
        <div class="btn">
            <button onclick="location.href='product_write.jsp';">추가</button>
            <button onclick="location.href='관리자-상품(삭제후).html';">삭제</button>
        </div>
		    <%
				for(int i=0; i<vlist.size(); i++){
					int product_num = vlist.get(i).getProduct_num();
					//Product regBean = new product();
					pMgr.get_Product(product_num);
					
		%>

        <div class="product">
                <img src="../fileupload/<%=vlist.get(i).getProduct_img()%>" id="img">
        <div class="product_list">

                <p>상품번호:<%=vlist.get(i).getProduct_num() %></p>
                <p>상품명:<%=vlist.get(i).getProduct_name() %></p>
                <p>브랜드:<%=vlist.get(i).getProduct_brand() %></p>
                <p>태그1:#<%=vlist.get(i).getProduct_tag1() %></p>
                <p>태그2:#<%=vlist.get(i).getProduct_tag2() %></p>
                <p>태그3:#<%=vlist.get(i).getProduct_tag3() %></p>
                <p>용량:<%=vlist.get(i).getProduct_volume() %></p>
                <p>가격:<%=vlist.get(i).getProduct_price() %></p>
                <p>상품 설명:<%=vlist.get(i).getProduct_info().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>") %></p>
                <p>상품 이미지:<%=vlist.get(i).getProduct_img() %></p>

		<button type="button" onclick="location.href='product_modify.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'" class="btn">수정</button>
		
		</div>
		        </div>

               
        <%
			}
		%>
                <div class="tagimg">
                


                </div>
                
                


    </form>
    </section>
</body>
</html>