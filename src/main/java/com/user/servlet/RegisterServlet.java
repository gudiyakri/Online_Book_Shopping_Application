package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter printWriter = resp.getWriter();
		// printWriter.println("Sucess");

		try {
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phno = req.getParameter("phno");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			User user = new User();
			user.setName(name);
			user.setEmail(email);
			user.setPhno(phno);
			user.setPassword(password);

			HttpSession session = req.getSession();

			// printWriter.println(name + " " + email + " " +phno + " " + password + " " +
			// check);
			if (check != null) {

				UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
				
				boolean f2 = dao.checkUser(email);
				
				if(f2) {	
					boolean f = dao.userRegistre(user);
					if (f) {
						// System.out.println("User Register Success");
						session.setAttribute("succMsg", "Registration Successfully....");
						resp.sendRedirect("register.jsp");
					} else {
						// System.out.println("Something wrong on server");
						session.setAttribute("failedMsg", "Something Wrong on server..");
						resp.sendRedirect("register.jsp");

					}
					
				}else {
					session.setAttribute("failedMsg", "User already exist. Try another email");
					resp.sendRedirect("register.jsp");
				}
				
				
			} else {
				// System.out.println("Please Check Agree & Terms Condition");
				session.setAttribute("failedMsg", "Please Check Agree & Terms Condition");
				resp.sendRedirect("register.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
