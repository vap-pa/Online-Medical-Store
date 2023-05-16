<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Portal</title>
<link rel="stylesheet" href="css/Log.css">
<style type="text/css">
button a {
  display: inline-block;
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  text-decoration: none;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  cursor: pointer;
}

button a:hover {
  background-color: #45a049;
}

button a:active {
  background-color: #3e8e41;
}


</style>
</head>
<body>
<form action="Man" method="post">
	<div class="container">
		<div class="loginbox">
			<h2>Login</h2>
				
					<div class="select">
  					<h1>Manager</h1>
					
				</div>
				<% String msg = (String)request.getAttribute("man");
				if(msg!=null){
					out.print(msg);
				}
				%>
			<input type="text" name="userid" placeholder="Enter User ID" required>
			<input type="password" name="password" placeholder="Enter Password" required>
			<input type="submit" value="Login">
			<button><a href="Main.jsp">Back</a></button>
			<p><a href="update.jsp">Forgot Passsword</a></p>
		</div>
	</div>
	</form>
</body>
</html>