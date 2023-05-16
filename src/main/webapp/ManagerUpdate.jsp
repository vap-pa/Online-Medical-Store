<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/manUP.css">
</head>
<body>
<%
                    
                   String ses =(String)session.getAttribute("session");
                    if(ses!=null){
                    	out.print(ses);
                    }
                    
                    %>
<div class="container">
		<div class="indexbox">
			<p><p>
			<h2>Drug Store Management</h2>
			<form action="Cdis" method="post"><button type="submit" class="button1">Customer  Logins Display</button></form>
			<form action="deleteC.jsp"><button class="button1">Delete Customers</button></form>
			<form action="showord" method="post"><button class="button1">Show Order</button></form>
			<form action="Main.jsp" method="post"><button class="button1">Logout</button></form>
			
			</form>
		</div>
	</div>
</body>
</html>