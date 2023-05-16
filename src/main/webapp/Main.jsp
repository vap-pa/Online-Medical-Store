<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Online Store</title>
<link rel="stylesheet" href="css/manUP.css">
<style type="text/css">
body{
background-image: url("images/p4.png");
	background-size: 1400px 600px;
	background-repeat: no-repeat;


}

</style>
<script type="text/javascript">
function preventBack(){window.history.forward()};
setTimeout("preventBack()",0);
window.onunload=function(){null;}

</script>
</head>
<body>

<div class="container">
		<div class="indexbox">
			<p><p>
			<h2>Drug Store Management</h2>
			<form action="Login.jsp"><button class="button1">Customer Login</button></form>
			<form action="Register.jsp"><button class="button1">Register As Customer</button></form>
			<form action="manager.jsp"><button class="button1">Store Manager Login</button></form>
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function preback() {window.history.forward();}
	setTimeout("preback()",0);
	window.onunload=function(){null};
		
	
		
	}
	
	
	
	</script>
</body>
</html>