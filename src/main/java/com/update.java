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

@WebServlet("/upd")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;



	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String target="update.jsp";
		UserInfo u = new UserInfo();
		u.setFname(request.getParameter("fname"));
		u.setLname(request.getParameter("lname"));
		u.setAddress(request.getParameter("address"));

		u.setEmail(request.getParameter("email"));
		u.setPass1(request.getParameter("pass1"));
		u.setPhno(request.getParameter("phno"));
		u.setUid(request.getParameter("uid"));
		boolean res = DBServic.update(u);
		if(res) {
			request.setAttribute("update", "Update Successfully");
		}else {
			request.setAttribute("update", "Update Could not Successfully");
		}

		RequestDispatcher rd = request.getRequestDispatcher("/"+target);
		rd.include(request, response);
	}

}
