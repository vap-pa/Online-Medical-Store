<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link rel="stylesheet" href="css/update.css">
</head>
<body>
<h1></h1>
  <div class="content">
  <section>
    <div class="register-wrapper">
    <div class="register-block">
    <h3 class="register-title">Create an account</h3>
     <p>
     <%
     String update =(String) request.getAttribute("update");
     if(update!=null){
    	 out.print(update);
     }
     
     
     %>
     
     </p>
      <form action="upd" method="post">
      <input type="text" name="fname" placeholder="Enter First Name" required>
			<input type="text" name="lname" placeholder="Enter Last Name" required>
			<input type="text" name="email" placeholder="Enter Old Email ID" required>
			<input type="text"  name="phno" placeholder="Enter Phone Number" onkeypress="return event.charCode>= 48 && event.charCode<= 57" required>
			<input type="text" name="address" placeholder="Enter Address" required>
			<input type="text" name="uid" placeholder="Enter Customer ID" required>
			<input type="password" name="pass1" placeholder="Enter Password" required>
			
			<input type="submit" value="Update" >
      </form>
    </div>
    </div>
  </section>
</div>
  
</body>
</html>