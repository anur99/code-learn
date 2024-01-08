package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.ErrorMessage;
import com.beans.InfoBeans;
import com.beans.InsertData;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String useremail = request.getParameter("useremail");
		String userpass = request.getParameter("userpass");

		InsertData data = new InsertData();
		InfoBeans user = data.getUserEmailAndPassword(useremail, userpass);
		if (user == null) {
//			error message....
			ErrorMessage err = new ErrorMessage("Incorrect Username or Password","error","alert-danger");
			HttpSession session = request.getSession();
			session.setAttribute("message", err);
			response.sendRedirect("loginPage.jsp");
			
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("profile.jsp");
		}
	}

}
