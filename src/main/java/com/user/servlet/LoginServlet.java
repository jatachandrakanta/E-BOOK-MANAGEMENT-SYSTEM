package com.user.servlet;

import java.io.IOException;

import com.DAo.UserDAoImpl;
import com.DB.DBConnect;
import com.entinty.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			UserDAoImpl dao=new UserDAoImpl(DBConnect.getConn());
			HttpSession session=req.getSession();
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			//System.out.println(email+" "+password);
			
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				user us=new user();
				us.setName("Admin");
				session.setAttribute("userobj",us);
				resp.sendRedirect("admin/home.jsp");
			}
			else {
				user us=dao.login(email, password);
				if(us !=null) {
					session.setAttribute("userobj", us);
					resp.sendRedirect("index.jsp");
				}
				else {
					session.setAttribute("failedMsg", "Email & password Invalid");
					resp.sendRedirect("login.jsp");
				}
	
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
