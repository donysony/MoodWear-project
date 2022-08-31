<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO"%>
<%@ page import="member.Address"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="memberDAO" class="member.MemberDAO"/>
    <%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");		
	}
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>배송주소록관리</title>
    <link rel="stylesheet" href="css/배송주소록관리.css">
    <script src="javascript/배송지주소록관리.js"></script>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
    <header>
   		<jsp:include page="header.jsp"/>
    </header>
	<div class="aside_article">
    <aside>
		<jsp:include page="aside.jsp"/>
    </aside>
    <section>
        <article>
            <h2>배송지 주소록관리</h2>
            <hr>
                <form action="" method="post" name="userForm">
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
                    <%
					ArrayList<Address> list = memberDAO.getMyAddress(userID);
                    for(int i=0; i<list.size(); i++){
                    	String phone = list.get(i).getAddress_phone();
                    	int num = list.get(i).getAddress_num();
                    	%>
                    <tr >
                        <td><input type="checkbox" name="RowCheck" value="<%=num%>"></td>
                        <td><%=list.get(i).getAddress_name() %></td>
                        <td><%=list.get(i).getAddress_reciever() %></td>
                        <td><%=list.get(i).getAddress1()+list.get(i).getAddress2() %></td>
                        <td><%=phone.substring(0,3)+"-"+phone.substring(3,7)+"-"+phone.substring(7)%></td>
                        <td><button class="ship_update" type="button"onClick="location.href='배송지수정.jsp?address_num=<%=num%>'">수정</button></td>
                    </tr>
                    
                    <%
                    }
                    %>
                </table> 
                   
                        <div class="address_btn">
                            <input type="button" value="선택주소록 삭제" id="directory_delete" onclick="deleteAddress()">
                            <input type="button" value="배송지 등록" id="registration" onclick="location.href='배송지등록.jsp'">
                        </div>
                    
				</form>
        </article>
        
        </section>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>