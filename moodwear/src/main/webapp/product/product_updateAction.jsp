<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="product.Product"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="product.ProductDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
    
    
<!DOCTYPE html> 
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 수정</title>
</head>
<body>
	<%

			
			ProductDAO bMgr = new ProductDAO();
			Product bean = (Product)session.getAttribute("bean");

			
			Product upBean = new Product();
			upBean.setProduct_num(Integer.parseInt(request.getParameter("product_num")));
			upBean.setProduct_name(request.getParameter("product_name"));
			upBean.setProduct_brand(request.getParameter("product_brand"));
			upBean.setProduct_price(request.getParameter("product_price"));
			upBean.setProduct_volume(Integer.parseInt(request.getParameter("product_volume")));
			upBean.setProduct_img(request.getParameter("product_img"));
			upBean.setProduct_info(request.getParameter("product_info"));
			upBean.setProduct_tag1(request.getParameter("product_tag1"));
			upBean.setProduct_tag2(request.getParameter("product_tag2"));
			upBean.setProduct_tag3(request.getParameter("product_tag3"));
			upBean.setProduct_tagImg1(request.getParameter("product_tagImg1"));
			upBean.setProduct_tagImg2(request.getParameter("product_tagImg2"));
		


			

					
		
	%>
	

</body>
</html>