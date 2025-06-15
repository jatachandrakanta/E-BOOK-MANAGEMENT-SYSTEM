package com.admin.servlet;

import java.io.IOException;

import com.DAo.BookDAoImpl;
import com.DB.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet {

//	@Override
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		try {
//			int id=Integer.parseInt(req.getParameter("id"));
//			BookDAoImpl dao=new BookDAoImpl(DBConnect.getConn());
//			boolean f=dao.deleteBooks(id);
//			HttpSession session=req.getSession();
//			if(f) {
//			session.setAttribute("succMsg", "Book Delete successfully");
//			resp.sendRedirect("admin/allbooks.jsp");
//			}
//			else {
//				session.setAttribute("failedMsg", "something went wrong on server");
//				resp.sendRedirect("admin/allbooks.jsp");
//			}
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    try {
	        int id = Integer.parseInt(req.getParameter("id"));
	        BookDAoImpl dao = new BookDAoImpl(DBConnect.getConn());
	        boolean f = dao.deleteBooks(id);
	        HttpSession session = req.getSession();

	        if (f) {
	            session.setAttribute("succMsg", "Book deleted successfully");
	            resp.sendRedirect("admin/allbooks.jsp");
	        } else {
	            session.setAttribute("failedMsg", "Something went wrong on server");
	            resp.sendRedirect("admin/allbooks.jsp");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}


}
