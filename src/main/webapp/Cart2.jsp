<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Vector"%>
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
	<form action="ord" method="post">
<button class="button-1" type="submit">Order Now</button>
	<a class="button-1" href=<%=response.encodeURL("Product2.jsp")%>>back</a>
		<%
HttpSession session1 = request.getSession();
Map<String, Double> cart = (Map<String, Double>) session.getAttribute("cart");
if (cart != null) {
%>
<table>
  <thead>
    <tr>
      <th>Product Name</th>
      <th>Price</th>
    </tr>
  </thead>
  <tbody>
    <% for (Map.Entry<String, Double> entry : cart.entrySet()) { %>
    <tr>
      <td><%= entry.getKey() %></td>
      <td><%= entry.getValue() %></td>
    </tr>
    <% } %>
  </tbody>
</table>
<%
} else {
%>
<p>Your cart is empty.</p>
<%
}
%>
		<P>
		<h1>
		
			<button class="button-1" type="submit">Order Now</button>
			<%session.setAttribute("orderdata", cart);
			String target ="order.java";
			RequestDispatcher rd =request.getRequestDispatcher("/"+target);
			rd.forward(request, response);
			%>
		</h1>
		
			<p>
				
					<a class="button-1" href=<%=response.encodeURL("Product2.jsp")%>>back</a>
				
			</p>
			<p>
				
					<a href=<%=response.encodeURL("LogOut.jsp")%>>Logout</a>
				
			</p>
		
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