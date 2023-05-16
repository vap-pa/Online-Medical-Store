<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Register.css">
</head>
<body>
<form action="Del" method="post">
	<div class="container">
		<div class="registerbox">
			<h2>Delete Customer</h2>
			<p style="color: red">
	<%
	String msg =(String) request.getAttribute("del");
	if(msg!=null){
		out.print(msg);
	}
	
	
	%>
	
	
	</p>
			<input type="text" name="uid" placeholder="Enter Customer ID" required>
			
			<input type="submit" value="Delete" >
			
			<button style="width: 140px;height: 40px;margin:20px 20px;background-color: blue;"><a style="color: white;text-decoration: none;" href="ManagerUpdate.jsp">Back To  Page</a></button>
		</div>
		</div>
	</form>
	

</body>
</html>