package com.admin.servlet;

import java.io.IOException;

import com.DAo.BookDAoImpl;
import com.DB.DBConnect;
import com.entinty.BookDtls;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/edit_books")
public class EditBooksServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String bookName=req.getParameter("bname");
			String author=req.getParameter("author");
			String price=req.getParameter("price");
			String status=req.getParameter("status");
			
			BookDtls b=new BookDtls();
			b.setBookId(id);
			b.setBookName(bookName);
			b.setAuthor(author);
			b.setPrice(price);
			b.setStatus(status);
			
			BookDAoImpl dao=new BookDAoImpl(DBConnect.getConn());
			boolean f=dao.updateEditBooks(b);
			HttpSession session=req.getSession();
			if(f) {
			session.setAttribute("succMsg", "Book Update successfully");
			resp.sendRedirect("admin/allbooks.jsp");
			}
			else {
				session.setAttribute("failedMsg", "something went wrong on server");
				resp.sendRedirect("admin/allbooks.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
