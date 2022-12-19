package models;

public class Cart {
	private String code;
	private String name;
	private float price;
	private String tel;
	private int quantity;

	public Cart() {
		
	}
	
	public Cart(String code, String name, float price, String tel, int quantity) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.tel = tel;
		this.quantity = quantity;
	}

	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public float getPrice() {
		return price;
	}


	public void setPrice(float price) {
		this.price = price;
	}


	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
