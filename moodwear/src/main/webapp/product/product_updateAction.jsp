<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="product.Product"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="product.ProductDAO"%>
<%@ page import="java.util.*, java.sql.*, java.io.File" %>
<%@ page import= "com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
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
			ProductDAO pd = new ProductDAO();
			pd.product_modify(request);


	%>
	

</body>
</html>