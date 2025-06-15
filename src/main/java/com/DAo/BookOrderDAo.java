package com.DAo;

import java.util.List;

import com.entinty.Book_Order;

public interface BookOrderDAo {

public boolean saveOrder(List<Book_Order> b);
public List<Book_Order>getBook(String email);
public List<Book_Order>getAllOrder();
}
