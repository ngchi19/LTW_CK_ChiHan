package models;

public class Product {
	private String code;
	private String name;
	private float price;
	private String description;
	private String img;
	private int quantity;

	public Product() {
	
	}

	public Product(String code, String name, float price, String description, String img, int quantity) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.description = description;
		this.img = img;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
