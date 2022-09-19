<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="product_write.ProductDAO" %>
<%@ page import="product_write.Product" %>
<%@ page import="java.io.PrintWriter" %> <!-- 자바스크립트 문장사용 -->
<!-- 파일업로드 위한 라이브러리 임포트 -->
<%@ page import="java.io.File" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!-- 위에것들 head 태그 위에 추가해줄 것 -->
<%
request.setCharacterEncoding("UTF-8");
	String product_name = request.getParameter("product_name");
	String product_brand = request.getParameter("product_brand");
%>
<%-- <%

	ProductDAO updload = new ProductDAO();
    int fileSize = 1024*1024*3; //3mb로 파일 크기를 제한 
    ServletContext context = getServletContext();
    String uploadPath = context.getRealPath("/uploadFiles"); 
    MultipartRequest multi = null;

    try{
      multi = new MultipartRequest(request, uploadPath, fileSize, "UTF-8",new DefaultFileRenamePolicy());
      String originalFile1 = multi.getOriginalFileName("product_img");
      String originalFile2 = multi.getOriginalFileName("product_tagImg1");
      String originalFile3 = multi.getOriginalFileName("product_tagImg2");
      String uploadFile1 = multi.getFilesystemName("uploadfiles");      
      String uploadFile2 = multi.getFilesystemName("product_tagImg1");      
      String uploadFile3 = multi.getFilesystemName("product_tagImg2");      

    }catch(Exception e){
      out.write("업로드 용량 오류 또는 그 이외..." + e.getMessage());
    }
    
 %> --%>
<jsp:useBean id="product" class="product_write.Product" scope="page"/>
<jsp:setProperty property="*" name="product"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP게시판 웹사이트</title>
</head>
<body>
<%-- <%
ProductDAO productDAO = new ProductDAO();
			int result = productDAO.product_write(product.product_name);
			if (result == 1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인에 성공하였습니다')");
		//script.println("location.href='main.jsp'");
		script.println("</script>");
			}
			 %> --%>
</body>
</html> 
