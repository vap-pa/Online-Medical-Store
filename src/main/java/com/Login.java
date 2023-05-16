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
import jakarta.servlet.http.HttpSession;

@WebServlet("/Log")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	UserInfo u = new UserInfo();
		u.setUid(request.getParameter("userid"));
		u.setPass1(request.getParameter("password"));

		boolean ragi = DBServic.check(u);
		String target;
		if(ragi) {

		  target ="Product3.jsp";
		  HttpSession session =request.getSession(false);
		  if(session!=null) {
			  session.invalidate();
		  }
		 session =request.getSession(true);
		 session.setAttribute("session",u.getUid());
			request.setAttribute("msg", "User Login successfully");

		}else {
			 target ="Login.jsp";
			request.setAttribute("msg", "UserId and Password Wroung");
		}

		RequestDispatcher rd =request.getRequestDispatcher("/"+target);
		rd.forward(request, response);
    }


}
