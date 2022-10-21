<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 상품</title>
<link rel="stylesheet" href="../css/best20.css" type="text/css">
</head>
<body>
 
	<%
	ArrayList<Product> vlist = pMgr.getProductListDesc();
	%>
	
    <div id="body-wrapper">
     <header>
   		<jsp:include page="../header.jsp"/>
    </header>
    <br>
    <br>
    <br>
<div class="total">
    <section id="first">
        <p class="name">전체 상품</p>
        <p class="order"><button class="button" onclick="location='product_ABC.jsp'">상품명 가나다순</button>
        <button onclick="location='product_priceASC.jsp'">낮은가격순</button>
        <button onclick="location='product_priceDESC.jsp'">높은가격순</button>
        </p>
        
<%
for(int i=0; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox"  onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                        <div class="two">
                            <div class="tbox">
                                <img src="../img/좋아요.png" class="thum">
                                <img src="../img/fullheart.png" class="full">
                            </div> &ensp;
        
                            <div class="tbox">
                                <img src="../img/장바구니.png" class="cart">
                            </div>
                        </div>
                </div>
                <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>


    </section>
    <section id="first">
<%
for(int i=4; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>

        <article class="first_prod">
            <div>
                <div class="ibox" onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
                    <%
}
%>



    </section>
    <section id="first">

<%
for(int i=8; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox" onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>


    </section>
    <section id="first">
<%
for(int i=12; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox"  onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>


    </section>
    <section id="first">
<%
for(int i=16; i<vlist.size(); i++){
Product regBean = vlist.get(i);
%>
        <article class="first_prod">
            <div>
                <div class="ibox"  onclick="location.href='detail.jsp?product_num=<%=vlist.get(i).getProduct_num() %>'">
                    <img src="../fileupload/<%=regBean.getProduct_img()%>" class="product">
                    <div class="two">
                        <div class="tbox">
                            <img src="../img/좋아요.png" class="thum">
                            <img src="../img/fullheart.png" class="full">
                        </div> &ensp;
    
                        <div class="tbox">
                            <img src="../img/장바구니.png" class="cart">
                        </div>
                    </div>
            </div>
            <div class="tag">
                    <div class="prodName"><%=regBean.getProduct_brand() %> <%=regBean.getProduct_name() %></div>
                    <div class="prodTag">
                        <div>#<%=regBean.getProduct_tag1() %></div>
                        <div>#<%=regBean.getProduct_tag2() %></div>
                        <div>#<%=regBean.getProduct_tag3() %></div>
                    </div>
                    <div class="volume"><%=regBean.getProduct_volume() %>mlㅣ<%=regBean.getProduct_price() %></div>
                </div>
            </div>
<%
}
%>
    </section>

</div>


    

<!--     <section>
        <a href=""><img src="../img/가입배너.png" id="banner"></a>
    </section> -->
    </div>
    <footer>
   		<jsp:include page="../footer.jsp"/>
    </footer>

</body>
</html>