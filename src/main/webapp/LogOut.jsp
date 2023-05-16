<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOut</title>
<link rel="stylesheet" href="css/Logout.css">
<script type="text/javascript">

function preventBack(){window.history.forward()};
setTimeout("preventBack()",0);
window.onunload=function(){null;}

</script>

</head>
<body>
<div class="login-div">
    
      <div class="center"><h1>Bye</h1>
      
      <a href="Main.jsp">Back To Main</a></div>
    </div>

   


</body>
</html>