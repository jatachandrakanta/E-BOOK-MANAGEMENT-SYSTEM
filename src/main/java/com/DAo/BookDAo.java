package com.DAo;

import java.util.List;

import com.entinty.BookDtls;

public interface BookDAo {
public boolean addBooks(BookDtls b);

public List<BookDtls> getAllBooks();
public BookDtls getBookById();

public boolean updateEditBooks(BookDtls b);
public boolean deleteBooks(int id);
public List<BookDtls> getNewBook();
public List<BookDtls> getRecentBooks();
public List<BookDtls> getOldBooks();
public List<BookDtls> getAllNewBook();
public List<BookDtls> getAllRecentBooks();
public List<BookDtls> getAllOldBooks();
public List<BookDtls>getBookByOld(String email,String cate);
public boolean oldBookDelete(String email,String cate,int id);
public List<BookDtls> getBookBySearch(String ch);


}
