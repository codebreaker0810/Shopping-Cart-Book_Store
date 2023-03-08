package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Order;

public class OrderDao {
	Configuration cfg = null;
	SessionFactory sf = null;
	Session s = null;
	Transaction tr = null;

	public OrderDao() {
		sf = new Configuration().configure("resources/hibernate.cfg.xml").buildSessionFactory();
		s = sf.openSession();
		tr = s.beginTransaction();
	}
	
	public int addOrder(Order order) {
		int isAdded = 0;
		try {
			s.save(order);
			s.flush();
			tr.commit();
			isAdded = 1;
		}catch(Exception e) {
			tr.commit();
		}
		return isAdded;
	}

}
