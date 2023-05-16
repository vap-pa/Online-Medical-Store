package com;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Cart02")
public class Cart02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

   	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   	 HttpSession session = request.getSession();
     String product_name = request.getParameter("product_name");
     int product_price = Integer.parseInt(request.getParameter("product_price"));
     List<String> cart = (List<String>) session.getAttribute("cart");
     if (cart == null) {
         cart = new ArrayList<>();
         session.setAttribute("cart", cart);
     }
     cart.add(product_name + " - " + product_price + "RS");
     response.sendRedirect("addcart.jsp");

	}

}
