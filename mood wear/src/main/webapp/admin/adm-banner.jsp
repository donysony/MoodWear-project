<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자-배너</title>
<link rel="stylesheet" href="../css/mwbanner.css" type="text/css">
</head>
<body>
	<header>
        <p id="head">배너 - 메인용</p>
    </header>

    <section>
        <div>
            <p>image</p>
            <input type="text" placeholder="첨부파일 추가 및 첨부파일명 표시">
            <button>추가</button><br>
            <input type="text" placeholder="첨부파일 추가 및 첨부파일명 표시">
            <button>추가</button><br>
            <input type="text" placeholder="첨부파일 추가 및 첨부파일명 표시">
            <button>추가</button>
        </div>

        <div class="photo">
            <img src="../img/미리보기.png" id="img">
            <img src="../img/미리보기.png" id="img">
            <img src="../img/미리보기.png" id="img">
        </div>
        
        <button id="submit">등록</button>
    </section>
</body>
</html>