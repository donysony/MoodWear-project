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
		int product_num = 0;
		System.out.println("product_name : " + request.getParameter("product_name"));
		System.out.println("product_brand : " + request.getParameter("product_brand"));
		System.out.println("product_tag1 : " + request.getParameter("product_tag1"));
		if (request.getParameter("product_num") != null) {
			product_num = Integer.parseInt(request.getParameter("product_num"));
		
		}
				ProductDAO productDAO = new ProductDAO();

				int result = productDAO.product_modify(product_num, request.getParameter("product_name"), request.getParameter("product_brand"), request.getParameter("product_price"), request.getParameter("product_volume"), request.getParameter("product_img"), request.getParameter("product_info"), request.getParameter("product_tag1"), request.getParameter("product_tag2"), request.getParameter("product_tag3"), request.getParameter("product_tagImg1"), request.getParameter("product_tagImg2"));
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('데이터베이스 오류입니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					PrintWriter script = response.getWriter();

				}
			

				
				
	%>
	

</body>
</html>