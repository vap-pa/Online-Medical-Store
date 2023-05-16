<%@page import="DTO.UserInfo"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/table.css">
</head>
<body>

<%
                    
                   String ses =(String)session.getAttribute("session");
                    if(ses!=null){
                    	out.print(ses);
                    }
                    
                    %>
<% Vector<UserInfo> v =(Vector)request.getAttribute("data"); %>
	<table border="2px">
	<tr>
			
			<th>Date</th>
			<th>First_Name</th>
			<th>Last_Name</th>
			<th>EmailId</th>
			
			<th>Contect</th>
			
			<th>Address</th>
			<th>UserId</th>
			
			<th>Password</th>
			
			
			
		</tr>
		
		
	<tr>
	    <%for(UserInfo u2:v){ %>
	         <td><%=u2.getDate()%></td>
			<td><%=u2.getFname()%></td>
            <td><%=u2.getLname()%></td>
            <td><%=u2.getEmail()%></td>
			<td><%=u2.getPhno()%></td>
			<td><%=u2.getAddress()%></td>
			<td><%=u2.getUid()%></td>
			<td><%=u2.getPass1()%></td>
			
		
		</tr>
		<%} %>
	
	</table>
</body>
</html>