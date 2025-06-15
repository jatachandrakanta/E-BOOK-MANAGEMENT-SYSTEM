package com.user.servlet;

import java.io.IOException;

import com.DAo.BookDAoImpl;
import com.DAo.CartDAoImpl;
import com.DB.DBConnect;
import com.entinty.BookDtls;
import com.entinty.Cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int bid=Integer.parseInt(req.getParameter("bid"));
			int uid=Integer.parseInt(req.getParameter("uid"));
			BookDAoImpl dao=new BookDAoImpl(DBConnect.getConn());
			BookDtls b=dao.getBookById(bid);
			Cart c=new Cart();
			c.setBid(bid);
			c.setUserId(uid);
			c.setBookName(b.getBookName());
			c.setAuthor(b.getAuthor());
			c.setPrice(Double.parseDouble(b.getPrice()));
			c.setTotalPrice(Double.parseDouble(b.getPrice()));
			
			
			CartDAoImpl dao2=new CartDAoImpl(DBConnect.getConn());
			boolean f=dao2.addCart(c);
			HttpSession session=req.getSession();
			if(f) {
				session.setAttribute("addCart", "Book Added to cart");
				resp.sendRedirect("all_new_book.jsp");
				
			}
			else {
				session.setAttribute("failed", "Something wrong on Server");
				resp.sendRedirect("all_new_book.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
