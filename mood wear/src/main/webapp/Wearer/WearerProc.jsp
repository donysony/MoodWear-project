<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Wearer.*" %>
<%@ page import="java.util.*, java.sql.*, java.io.File" %>
<%@ page import= "com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
	
	        String SAVEFOLDER = "C:/Users/user/git/MoodWear-project/mood wear/src/main/webapp/fileupload";
	    	String ENCTYPE = "UTF-8";
	    	int MAXSIZE = 5*1024*1024;

	        MultipartRequest multi = null;
			WearerDAO wr = new WearerDAO();
			String Btitle = null;
			int result = 0;
			String msg = "저장되지 않았습니다";
			String url = "WearerRegist.jsp";

	    	try { 
	        	File file = new File(SAVEFOLDER);
	    		if(!file.exists()) {
	    			file.mkdirs();
	    		}	
	    		multi = new MultipartRequest(request, SAVEFOLDER,MAXSIZE,ENCTYPE,
	    						new DefaultFileRenamePolicy());
	    		Btitle = multi.getParameter("wearer_Btitle");
       			result = wr.product_write(multi);
       	    } catch(Exception e) {
       	        e.printStackTrace();
       	    }
			if(result == 1) {
				msg = "저장되었습니다";
				url="Wearer.jsp?wearer_Btitle=" + Btitle;
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