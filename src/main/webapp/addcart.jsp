<%@page import="DTO.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <link rel="stylesheet" href="css/table.css">
</head>
<body>
<form action="ord01" method="post">
   <%
	List<String> cart = (List<String>) session.getAttribute("cart");
	if (cart != null && cart.size() > 0) {
%>
		<table>
		<tr>
				<th><label> <%
						String ses1 = (String) session.getAttribute("session");
						if (ses1 != null) {
							out.print("Welcome " + ses1);
							
						}
						%></label></th>
			</tr>
			<tr>
				<th>Product Name</th>
				<th>Product Price</th>
			</tr>
<%
		for (String item : cart) {
			String[] itemArray = item.split(" - ");
%>
			<tr>
				<td><%= itemArray[0] %></td>
				<td><%= itemArray[1] %>RS</td>
			</tr>
			<input type="hidden" name="productName[]" value="<%= itemArray[0] %>">
		<input type="hidden" name="productPrice[]" value="<%= itemArray[1] %>">
		<input type="hidden" name="uid" value="<%= ses1 %>">
		
<%
		}
%>
		</table>
<%
	} else {
%>
		<p>Your cart is empty</p>
<%
	}
%>


<button class="button-1" type="submit">Order Now</button>
<button><a href=<%=response.encodeURL("LogOut.jsp")%>>Logout</a></button>
<button ><a class="button-1" href=<%=response.encodeURL("Product3.jsp")%>>back</a></button>
   </form>
   <h1>
		<%
		String ord = (String) request.getAttribute("ord");
		if (ord != null) {
			out.print(ord);
		}
		%>
	</h1>
</body>
</html>
