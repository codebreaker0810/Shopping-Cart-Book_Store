package bean;

public class Customer {
	private int customer_id;
	private String mobile;
	private String password;
	private String email;
	private String address;
	private String city;
	private String pin;

	public Customer() {
	}

	public Customer(int customer_id, String mobile, String password, String email, String address, String city,
			String pin) {
		this.customer_id = customer_id;
		this.mobile = mobile;
		this.password = password;
		this.email = email;
		this.address = address;
		this.city = city;
		this.pin = pin;
	}

	public int getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

}
