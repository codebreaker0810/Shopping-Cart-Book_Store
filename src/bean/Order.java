package bean;

public class Order {
	private int id;
	private String customer_name;
	private String phone;
	private String address;
	private int book_quantity;
	private int book_id;
	private String order_date;

	public Order() {
	}

	public Order(int id, String customer_name, String phone, String address, int book_quantity, int book_id,
			String order_date) {
		this.id = id;
		this.customer_name = customer_name;
		this.phone = phone;
		this.address = address;
		this.book_quantity = book_quantity;
		this.book_id = book_id;
		this.order_date = order_date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getBook_quantity() {
		return book_quantity;
	}

	public void setBook_quantity(int book_quantity) {
		this.book_quantity = book_quantity;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

}
