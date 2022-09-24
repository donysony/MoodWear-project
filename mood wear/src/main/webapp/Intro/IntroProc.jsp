<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Intro.*" %>
<%@ page import="java.util.*, java.sql.*, java.io.File" %>
<%@ page import= "com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	
	        String SAVEFOLDER = "C:/Users/user/git/MoodWear-project/mood wear/src/main/webapp/fileupload";
	    	String ENCTYPE = "UTF-8";
	    	int MAXSIZE = 5*1024*1024;

	        MultipartRequest multi = null;
			IntroDAO ir = new IntroDAO();
			String bigimg = null;
			int result = 0;
			String msg = "저장되지 않았습니다";
			String url = "IntroRegist.jsp";

	    	try { 
	        	File file = new File(SAVEFOLDER);
	    		if(!file.exists()) {
	    			file.mkdirs();
	    		}	
	    		multi = new MultipartRequest(request, SAVEFOLDER,MAXSIZE,ENCTYPE,
	    						new DefaultFileRenamePolicy());
       			result = ir.content_write(multi);
       	    } catch(Exception e) {
       	        e.printStackTrace();
       	    }
			if(result == 1) {
				msg = "저장되었습니다";
				url="Intro.jsp?intro_bigimg=" + bigimg;
			}
		%>
		
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
</body>
</html>