<%@page import="DTO.Order"%>
<%@page import="DTO.UserInfo"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Display</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>

<%
                    
                   String ses =(String)session.getAttribute("session");
                    if(ses!=null){
                    	out.print(ses);
                    }
                    
                    %>
<% Vector<Order> v =(Vector)request.getAttribute("data"); %>
	<table border="2px">
	<tr>
			
			<th>Date</th>
			<th>User Id</th>
			<th>Medicine Name</th>
			<th>Price</th>
			
			
		</tr>
		
		
	<tr>
	    <%for(Order u2:v){ %>
	         <td><%=u2.getDate()%></td>
			
			<td><%=u2.getUid()%></td>
			<td><%=u2.getMedicine()%></td>
			<td><%=u2.getPrice()%></td>
			
		
		</tr>
		<%} %>
	<tr>
	<form action="ManagerUpdate.jsp" method="post"><button class="button1">Back</button></form>
	</tr>
	</table>
	
</body>
</html>