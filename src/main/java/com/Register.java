package com;

import java.io.IOException;

import DBServics.DBServic;
import DTO.UserInfo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Reg")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

   @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   UserInfo u = new UserInfo();
		u.setFname(request.getParameter("fname"));
		u.setLname(request.getParameter("lname"));
		u.setAddress(request.getParameter("address"));

		u.setEmail(request.getParameter("email"));
		u.setPass1(request.getParameter("pass1"));
		u.setPhno(request.getParameter("phno"));
		u.setUid(request.getParameter("uid"));

		boolean ragi = DBServic.insert(u);
		if(ragi) {
			request.setAttribute("msg", "User Ragistration successfully");

		}else {
			request.setAttribute("msg", "Somthing Went Wroung");
		}
		String target ="Register.jsp";
		RequestDispatcher rd =request.getRequestDispatcher("/"+target);
		rd.forward(request, response);
}



}
