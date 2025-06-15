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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			
//			System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			
			
			user us=new user();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			if(check!=null) {
				UserDAoImpl dao=new UserDAoImpl(DBConnect.getConn());
				boolean f2=dao.checkUser(email);
				
				if(f2) {
					
					
					boolean f=dao.userRegistre(us);
					
					
					if(f) {
						//System.out.println("User Register success");
						
						session.setAttribute("succMsg","Register successfuly");
						resp.sendRedirect("resgister.jsp");
					}
					else {
						//System.out.println("Some went wrong in server");
						session.setAttribute("failedMsg","Something went wrong");
						resp.sendRedirect("resgister.jsp");
					}
				}else {
					
					session.setAttribute("failedMsg","User Already Exist Try Another Email id");
					resp.sendRedirect("resgister.jsp");
					
				}
				
			}
			else {
				//System.out.println("Please check Agree & Terms Condition");
				
				session.setAttribute("failedMsg","please check Agree & Terms Condition");
				resp.sendRedirect("resgister.jsp");
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
