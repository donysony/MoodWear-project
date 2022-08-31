<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>

<%
	request.setCharacterEncoding("UTF-8");
	DecimalFormat dFormat = new DecimalFormat("###,###");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<link rel="stylesheet" href="css/mwbrand.css" type="text/css">
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<header>
        <p>상품 수정</p>
    </header>

    <section>
        <div class="btn">
            <button onclick="location.href='product_write.jsp';">추가</button>
            <button onclick="location.href='delete.jsp';">삭제</button>
        </div>
    </section>

    <section>
        <article class="product">
        	<%
        	Connection con = null;
        	
        	String url = "jdbc:mysql://localhost:3306/moodwear?serverTimezone=UTC";
        	String user = "root";
        	String password = "MY!jazz92";
        	
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/moodwear?serverTimezone=UTC", 
					"root","MY!jazz92");
        	 %>
        	 
        	 <%
        	 	String product_num = request.getParameter("product_num");
	        	
        	 	PreparedStatement pstmt = null;
	        	ResultSet rs = null;
	        	String sql = "select * from product where product_num = ?";
	        	 
	        	pstmt = con.prepareStatement(sql);
	        	pstmt.setString(1, product_num);
	        	
	        	rs = pstmt.executeQuery();
	        	
	        	if(rs.next()){
	          %>   
	          
	    	 </article>
   		 </section>   	

    <section>
        <article class="product">
            <div class="left">
                <img src="${pageContext.request.contextPath}/resources/images/<%=rs.getString("filename")%>" id="img">
            </div>

            <div class="right">
            <form action="./processUpdateProduct.jsp" name="newProduct" method="post" enctype="multipart/form-data">
                <p><input type="text" placeholder="브랜드명" id="pname" name="product_num" value='<%=rs.getString("product_num")%>'></p>
                <p><input type="text" placeholder="상품명" id="pname" name="pname" value='<%=rs.getString("pname") %>'></p>
                <p><input type="text" placeholder="태그" name="product_tag1" value='<%=rs.getString("product_tag1") %>'>&ensp;
                <input type="text" placeholder="태그" name="product_tag2" value='<%=rs.getString("product_tag2") %>'>&ensp;
                <input type="text" placeholder="태그" name="product_tag3" value='<%=rs.getString("product_tag3") %>'></p>
                <p><input type="text" placeholder="용량" name="product_volume" value='<%=rs.getInt("product_volume") %>'>&ensp;
                <input type="text" placeholder="가격" name="product_price" value='<%=rs.getString("product_price")%>'></p>
                <p>상품 이미지</p>
                <p><input type="file" id="pname" name="filename"></p>
                <p>상품 설명</p>
                <p><input type="text" name="product_info" value='<%=rs.getString("product_info")%>'></p>
                <p>태그 관련 이미지</p>
                <p><input type="file" name="tagname" class="timg"></p>
                <p><input type="file" name="tagname" class="timg"></p>
                <button id="correct" type="submit" onclick="location.href='product_write.jsp">등록</button>
                <hr>
                </form>
            </div>
      
    <%	
	   	}
	      
	    if(rs != null) rs.close();
	    if(pstmt != null) pstmt.close();
	    if(con != null) con.close();
	 %>
          </article>
   		 </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>