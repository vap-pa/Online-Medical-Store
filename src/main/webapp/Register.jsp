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
<form action="Reg" method="post">
	<div class="container">
		<div class="registerbox">
			<h2>Register New Customer</h2>
			<p style="color: red">
	<%
	String msg =(String) request.getAttribute("msg");
	if(msg!=null){
		out.print(msg);
	}
	
	
	%>
	
	
	</p>
			<input type="text" name="fname" placeholder="Enter First Name" required>
			<input type="text" name="lname" placeholder="Enter Last Name" required>
			<input type="text" name="email" placeholder="Enter Email ID" required>
			<input type="text"  name="phno" placeholder="Enter Phone Number" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
			<input type="text" name="address" placeholder="Enter Address" required>
			<input type="text" name="uid" placeholder="Enter Customer ID" required>
			<input type="password" name="pass1" placeholder="Enter Password" required>
			
			<input type="submit" value="Submit" >
			
			<button style="width: 140px;height: 40px;margin:20px 20px;background-color: blue;"><a style="color: white;text-decoration: none;" href="Main.jsp">Back To Main Page</a></button>
		</div>
		</div>
	</form>
	
</body>
</html>