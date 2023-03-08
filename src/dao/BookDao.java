package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Book;

public class BookDao {
	Configuration cfg = null;
	SessionFactory sf = null;
	Session s = null;
	Transaction tr = null;

	
	public BookDao() {
		sf = new Configuration().configure("resources/hibernate.cfg.xml").buildSessionFactory();
		s = sf.openSession();
		tr = s.beginTransaction();
	}	
	
	public List<Book> getAllBookList(){
		List<Book> book_list = s.createQuery("FROM Book").list();
		return book_list;
	}
	
	public Book getBookById(int id) {
		Book book = (Book)s.get(Book.class,id);
		return book;
	}
}
