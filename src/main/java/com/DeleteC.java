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
@WebServlet("/Del")
public class DeleteC extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInfo u =new UserInfo();
		u.setUid(request.getParameter("uid"));
		boolean res =DBServic.delete(u);
		if(res) {
			request.setAttribute("del", "User Deleted");
		}else {
			request.setAttribute("del", "User not Deleted");
		}
		String target="deleteC.jsp";
		RequestDispatcher rd =request.getRequestDispatcher("/"+target);
		rd.forward(request, response);
	}

}
