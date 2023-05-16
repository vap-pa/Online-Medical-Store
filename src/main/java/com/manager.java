package com;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Man")
public class manager extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id= request.getParameter("userid");
		String pass = request.getParameter("password");
		String target ="";
		if(id.equals("Vap")&&pass.equals("007")) {
			HttpSession session =request.getSession(false);
			  if(session!=null) {
				  session.invalidate();
			  }
			 session =request.getSession(true);
			 session.setAttribute("session","Welcome "+ id);
				request.setAttribute("msg", "User Login successfully");

			target="ManagerUpdate.jsp";
		}else {
			request.setAttribute("man", "Wroung Id And Password");
			target="manager.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher("/"+target);
		rd.include(request, response);
	}

}
