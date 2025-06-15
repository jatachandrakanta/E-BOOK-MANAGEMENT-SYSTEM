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

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			UserDAoImpl dao=new UserDAoImpl(DBConnect.getConn());
		
			user us=new user();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			HttpSession session=req.getSession();
			boolean f= dao.checkPassword(id,password);
			if(f) {
				boolean f2=dao.updateProfile(null);
				if(f2) {
					session.setAttribute("succMsg"," Profile update successfuly");
					resp.sendRedirect("Edit_Profile.jsp");
				}else {
					session.setAttribute("failedMsg","Something Wrong On Server");
					resp.sendRedirect("Edit_Profile.jsp");
				}
			}else {
				session.setAttribute("failedMsg","	Your Password is incorrect");
				resp.sendRedirect("Edit_Profile.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
