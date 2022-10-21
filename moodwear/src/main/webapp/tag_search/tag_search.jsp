<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/태그검색.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script>
		function tagform() {
			document.querySelector(".tag_box>input").value = event.target.value
			// . 붙여서 css 문법으로 적음
			// querySelector로 불러올 것은 무조건 한개여야 함.
			// 요소가 여러개면 document.querySelectorAll을 적어야 함.
			// document.querySelectorAll()[숫자]
/* 			console.log(document.querySelector(".tag_box>input"))
			console.log(event.target) */
			document.getElementsByClassName("formBox")[0].submit()
			// getElementById: id를 토대로 가져옴(id는 한개여야 함).
			// getElementsByClassName: 클래스에 해당하는 모든것을 가져옴.
			// getElementsByClassName("formBox")[숫자] (하나여도 무조건 0을 적어야 함)
			
			// event.target : event가 실행될 요소를 불러옴.(event=함수를 실행시킨 요소)
			
			
			
		}
    </script>
</head>
<body>
    <div id="body-wrapper">
     <header>
   		<jsp:include page="../header.jsp"/>
    </header>

    <!------------ 태그 검색창 시작 ------------>
    <h2>태그검색</h2>
    <hr>
<form method="get" action="tag_searchResult.jsp" name="product_tag" class="formBox">
    <div class="tag_box">
    <input type="hidden" name="product_tag">
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="사랑스러운" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="가벼운" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="묵직한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="상큼한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="비누향" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="포근한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="풀숲" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="절향" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="아침" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="밤" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="커리어우먼" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="시원한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="달달한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="섹시한" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="우디향" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="바닐라" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="스파이시" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="머스크" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="파우더리" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="20대" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="30대" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="오렌지" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="무화과" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="자몽" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="레몬" onclick="tagform()"><br><br>
        </div>
        <div class="tag_boxes">
            <input type="button" class="product_tag" value="꽃" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="봄" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="여름" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="가을" onclick="tagform()"><br><br>
            <input type="button" class="product_tag" value="겨울" onclick="tagform()"><br><br>
        </div>
    </div>
    </form>


        </div>
    <footer>
   		<jsp:include page="../footer.jsp"/>
    </footer>
    </section>
    </div>
</body>
</html>
