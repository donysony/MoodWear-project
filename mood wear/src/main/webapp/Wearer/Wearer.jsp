<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Wearer.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웨어러 추천</title>
    <link rel="stylesheet" href="../css/rcm.css">
</head>
<body>
        <%
			
        	WearerDAO wr = new WearerDAO();
	        // DB에 저장하는 메소드
        	Wearer wearer = wr.getShow();
	        String imgName = wearer.getWearer_img();
	        System.out.println("imgName : " + imgName);
        	// 반환하는값 자료형 기재
        	
		 %>
		

    	<header>
	   		<jsp:include page="../header.jsp"/>
	    </header>
	    
    
    	<section>
	        <div>
	       		<img src="/fileupload/<%=imgName%>" />
	       	</div>
	       	
	       	<div>
		         <p><h2 class="tx"><%=wearer.getWearer_Btitle()%></h2></p>
		         <p><h3 class="tx"><%=wearer.getWearer_Stitle()%></h3></p>
		         <p id="ex"><%=wearer.getWearer_content()%></p>
		    </div>
   		</section>
	   
	   
	  	<footer>
	    	<jsp:include page="../footer.jsp"/>
	    </footer>
</body>
</html>