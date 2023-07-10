package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
	public boolean addBooks(BookDtls b);

	public List<BookDtls> getAllBooks();

	public BookDtls getBoojById(int id);

	public boolean updateEditBooks(int id);

	public boolean deleteBooks(int id);

	public List<BookDtls> getNewBook();

	public List<BookDtls> getRecentBooks();

	public List<BookDtls> getOldBooks();
	
	public List<BookDtls> getAllRecentBook();
	
	public List<BookDtls> getAllNewBook();
	
	public List<BookDtls> getAllOldBook();
	
	public List<BookDtls> getBookByOld(String email, String cate);
	
	public boolean oldBookDelete(String email, String cat, int id);
	
	public List<BookDtls> getBookBySearch(String ch);
}
