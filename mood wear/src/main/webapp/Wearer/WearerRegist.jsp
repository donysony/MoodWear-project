<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>웨어러 추천 (등록)</title>
</head>
<body>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웨어러 추천</title>
    <link rel="stylesheet" href="../css/rcm.css" type="text/css">
</head>

<body>      
		<form method="post" action="WearerProc.jsp" enctype="multipart/form-data">
           <div class="box">
               <p>상품 이미지 &ensp;
               <input type="file" id="pname" name="wearer_img"></p><br><br>
               <p>대제목</p>
               <p><textarea id="" cols="58" rows="5" name="wearer_Btitle"></textarea></p><br>
               <p>소제목</p>
               <p><textarea id="" cols="58" rows="5" name="wearer_Stitle"></textarea></p><br>
               <p>설명</p>
               <p><textarea id="" cols="58" rows="5" name="wearer_content"></textarea></p><br><br>
               <input type="submit" id="correct" value="등록" >
           </div>
   	 </form>
</body>
</html>