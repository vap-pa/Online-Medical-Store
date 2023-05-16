package com;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DBServics.DBServic;
import DTO.Order;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/ord01")
public class order02 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Order o1 = new Order();
		String target="";
		HttpSession session=request.getSession() ;
		String[] productNames = request.getParameterValues("productName[]");
		String[] productPrices = request.getParameterValues("productPrice[]");
		String uid  =request.getParameter("uid");




		boolean ord = DBServic.order01(productNames,productPrices,uid);
		if(ord) {
			target ="addcart.jsp";
			request.setAttribute("ord","Order Placed");
		}else {
			 target ="addcart.jsp";
			request.setAttribute("ord", "Order Not Placed");
		}

		RequestDispatcher rd =request.getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}

}
