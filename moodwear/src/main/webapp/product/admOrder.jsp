<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "product.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<jsp:useBean id="pMgr" class ="product.ProductDAO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자(주문내역)</title>
    <link rel="stylesheet" href="../css/mworder.css" type="text/css">
</head>
<body>
	<%
	ArrayList<Order> vlist = pMgr.getOrderList();
	%>
    <header>
        <p id="head">주문내역</p>
    </header>
    <section>
        <table>
            <form action=""></form>


            <tr id="one">
                <td>아이디</td>
                <td>주문 번호</td>
                <td>주문 날짜</td>
                <td>상품 번호</td>
            </tr>
		<%
		for(int i=0; i<vlist.size(); i++){
		Order regBean = vlist.get(i);
		%>
            

            <tr>
                <td><%=regBean.getMember_id() %></td>
                <td><%=regBean.getOrder_num() %></td>
                <td><%=regBean.getOrder_date() %> </td>
                <td><%=regBean.getProduct_num() %></td>
            </tr>
		<%
		}
		%>  

 
        </table>
    </section>
</body>
</html>