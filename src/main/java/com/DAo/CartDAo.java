package com.DAo;

import java.util.List;

import com.entinty.Cart;

public interface CartDAo {
public boolean addCart(Cart c);
public List<Cart> getBookByUser(int userId);
public boolean deleteBook(int bid,int uid,int cid);
}
