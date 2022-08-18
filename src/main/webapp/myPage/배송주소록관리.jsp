<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>배송주소록관리</title>
    <link rel="stylesheet" href="../css/배송주소록관리.css">
</head>
<body>
    <header>
   		<jsp:include page="../header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="../aside.jsp"/>
    </aside>
    <section>
        <article>
            <h2>배송지 주소록관리</h2>
            <hr>
                <form action="" method="post" >
            <table class="shipping_address">
                    <tr>
                        <th>배송지 선택</th>
                        <th>배송지명</th>
                        <th>수신자명</th>
                        <th>주소</th>
                        <th>연락처</th>
                        <th>수정</th>
                    </tr>
                    <tr>
                        <td colspan="6"></td>
                    </tr>
                    <tr >
                        <td><input type="checkbox" name="" id=""></td>
                        <td>집</td>
                        <td>박경선</td>
                        <td>인천광역시 구월동 엔타스빌딩 11층</td>
                        <td>010-1234-5678</td>
                        <td><button class="ship_update" type="button"onClick="location.href='배송지수정.jsp'">수정</button></td>
                    </tr>
                    <tr >
                        <td><input type="checkbox" name="" id=""></td>
                        <td>집</td>
                        <td>박경선</td>
                        <td>인천광역시 구월동 엔타스빌딩 11층</td>
                        <td>010-1234-5678</td>
                        <td><button class="ship_update" type="button"onClick="location.href='배송지수정.jsp'">수정</button></td>
                    </tr>
                </table> 
                   
                        <div class="address_btn">
                            <input type="button" value="선택주소록 삭제" id="directory_delete">
                            <input type="button" value="배송지 등록" id="registration" onclick="location.href='배송지등록.jsp'">
                        </div>
                    
				</form>
        </article>
        
        </section>
    </div>
    <footer>
    <jsp:include page="../footer.jsp"/>
    </footer>
</body>
</html>