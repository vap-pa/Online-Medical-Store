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
				<th>Selected ss</th>
			</tr>
		</table>
		<P>
		<table>
			<tr>
				<th>Medicine Name</th>
				<th>Price</th>
			</tr>




			<%
			ArrayList al = (ArrayList) session.getAttribute("cart");
			String s=null;
			while(al!=null && al.size()>0) {

				for(int i=0;i<al.size();i++){
					s= (String)al.get(i);
					
			%>
			<tr>
				<td><%out.println(s);%></td>
				



			</tr>


			<%
					}
			}
			
			%>
		</table>

		<P>
		<h1>
		
			<button class="button-1" type="submit">Order Now</button>
			<%session.setAttribute("orderdata", al);
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