<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>관리자-무드웨어 소개(수정)</title> 
<link rel="stylesheet" href="../css/mwintro.css" type="text/css">
</head>
<body> 
	<header>
    	<p id="head">무드웨어 소개</p>
    </header>

	<form method="post" action="IntroProc.jsp" enctype="multipart/form-data">
	        <div class="one">
	            <p>첫번째 배너<br><br>
	            <input type="file" name="intro_bigimg"></p>
	        </div>
	        
	        <div class="intro">
	            <p>소개글 제목<br><br>
	            <input type-"text" name="intro_introTitle"></p>
	        </div><br>

	        <div class="intro">
	            <p>소개글 본문<br><br>
	            <textarea cols="58" rows="5" name="intro_introContent"></textarea></p>
	        </div><br>
	    <hr>
	

	        <div class="one">
	            <p>두번째 배너<br><br>
	            <input type="file" name="intro_smallimg"></p>
	        </div>
	    <hr>
	
	    <section>
	        <article>
	            <div>
	                <p>소이미지 (1)<br><br>
	                <input type="file" name="intro_oneimg"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (1) 제목<br><br>
	                <input type="text" name="intro_oneTitle"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (1) 소개<br><br>
	                <textarea cols="58" rows="5" name="intro_oneContent"></textarea></p>
	            </div>
	        </article>
	    </section>
	    <hr>
	
	    <section>
	        <article>
	            <div>
	                <p>소이미지 (2)<br><br>
	                <input type="file" name="intro_twoimg"></p>
	            </div>
	
	
	            <div>
	                <p>소이미지 (2) 제목<br><br>
	                <input type="text" name="intro_twoTitle"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (2) 소개<br><br>
	                <textarea cols="58" rows="5" name="intro_twoContent"></textarea></p>
	            </div>
	        </article>
	    </section>
	    <hr>
	
	    <section>
	        <article>
	            <div>
	                <p>소이미지 (3)<br><br>
	                <input type="file" name="intro_threeimg"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (3) 제목<br><br>
	                <input type="text" name="intro_threeTitle"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (3) 소개<br><br>
	                <textarea cols="58" rows="5" name="intro_threeContent"></textarea></p>
	            </div>
	        </article>
	    </section>
	    <hr>
	
	    <section> 
	        <article>
	            <div>
	                <p>소이미지 (4)<br><br>
	                <input type="file" name="intro_fourimg"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (4) 제목<br><br>
	                <input type="text" name="intro_fourTitle"></p>
	            </div>
	
	            <div>
	                <p>소이미지 (4) 소개<br><br>
	                <textarea cols="58" rows="5" name="intro_fourContent"></textarea></p>
	            </div>
	        </article>
	    </section>

		<button type="submit" id="btn">등록</button>
	  
	  </form>
</body>
</html>