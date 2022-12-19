package models;

public class UserAccount {
	private String userName;
	private String tel;
	private String email;
	private String pass;
	
	public UserAccount() {
		
	}

	public UserAccount(String userName, String tel, String email, String pass) {
		super();
		this.userName = userName;
		this.tel = tel;
		this.email = email;
		this.pass = pass;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

}
