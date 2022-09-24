<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Intro.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>무드웨어 소개</title>
<link rel="stylesheet" href="../css/intro.css" type="text/css">
</head>
<body>

		<%
        	IntroDAO ir = new IntroDAO();
        	Intro intro = ir.getShow();
        	
	        String bigimgname = intro.getIntro_bigimg();
	        String smallimg = intro.getIntro_smallimg();
	        String oneimg = intro.getIntro_oneimg();
	        String twoimg = intro.getIntro_twoimg();
	        String threeimg = intro.getIntro_threeimg();
	        String fourimg = intro.getIntro_fourimg();
	        System.out.println("bigimgname : " + bigimgname);
		 %>


	<header>
		<jsp:include page="../header.jsp"/>
	</header>


    <div id="body-wrapper">

        <div>
            <img src="/fileupload/<%=bigimgname%>" id="bn1">
        </div>

        <div class="first">
            <p><h2><%=intro.getIntro_introTitle()%></h2></p>
            <p id="second"><%=intro.getIntro_introContent()%></p>
        </div>
        
        <article id="bn2">
            <img src="/fileupload/<%=smallimg%>" id="main">
        </article>
        
        <article class="one">
            <div>
                <img src="/fileupload/<%=oneimg%>" class="one_img">
            </div>
                    <div id="right">
                        <p><h3><%=intro.getIntro_oneTitle()%></h3></p>
                        <hr>
                        <p><%=intro.getIntro_oneContent()%></p>
                    </div>
        </article>

        <article class="one">
            <div>
                <img src="/fileupload/<%=twoimg%>"  class="one_img">
            </div>
                    <div id="right">
                        <p><h3><%=intro.getIntro_twoTitle()%></h3></p>
                        <hr>
                        <p><%=intro.getIntro_twoContent()%></p>
                    </div>
        </article>

        <article class="one">
            <div>
                <img src="/fileupload/<%=threeimg%>"  class="one_img">
            </div>
                    <div id="right">
                        <p><h3><%=intro.getIntro_threeTitle()%></h3></p>
                        <hr>
                        <p><%=intro.getIntro_threeContent()%></p>
                    </div>
        </article>

        <article class="one">
            <div>
                <img src="/fileupload/<%=fourimg%>" class="one_img">
            </div>
                    <div id="right">
                        <p><h3><%=intro.getIntro_fourTitle()%></h3></p>
                        <hr>
                        <p><%=intro.getIntro_fourContent()%></p>
                    </div>
        </article>
    </div>
    
    <footer>
	    <jsp:include page="../footer.jsp"/>
	</footer>
	
</body>
</html>