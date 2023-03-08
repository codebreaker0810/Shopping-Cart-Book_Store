package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Customer;

public class CustomerDao {
	Configuration cfg = null;
	SessionFactory sf = null;
	Session s = null;
	Transaction tr = null;

	public CustomerDao() {
		sf = new Configuration().configure("resources/hibernate.cfg.xml").buildSessionFactory();
		s = sf.openSession();
		tr = s.beginTransaction();
	}

	public int addCustomer(Customer customer) {
		int isAdded = 0;
		try {
			s.save(customer);
			s.flush();
			tr.commit();
			isAdded = 1;
		} catch (Exception e) {
			tr.commit();
		}
		return isAdded;
	}
	
	public Customer checkCustomerLogin(Customer customer) {
		Customer cust = null;
		cust = (Customer) s.createQuery("FROM Customer where email = :emailid").setParameter("emailid", customer.getEmail()).uniqueResult();		
		return cust;
	}

}
