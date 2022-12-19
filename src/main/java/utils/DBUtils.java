package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.AdminAccount;
import models.Cart;
import models.Product;
import models.UserAccount;

public class DBUtils {
//	public static AdminAccount findUser(Connection conn, //
//			String userName, String password) throws SQLException {
//
//		String sql = "Select a.User_Name, a.Password from ADMIN_ACCOUNT a " //
//				+ " where a.User_Name = ? and a.password= ?";
//
//		PreparedStatement pstm = conn.prepareStatement(sql);
//		pstm.setString(1, userName);
//		pstm.setString(2, password);
//		ResultSet rs = pstm.executeQuery();
//
//		if (rs.next()) {
////			String gender = rs.getString("Gender");
//			AdminAccount user = new AdminAccount();
//			user.setUserName(userName);
//			user.setPassword(password);
////			user.setGender(gender);
//			return user;
//		}
//		return null;
//	}
//
	public static AdminAccount findUser(Connection conn, String tel) throws SQLException {

		String sql = "Select a.tel, a.Password from ADMIN_ACCOUNT a "//
				+ " where a.tel = ? ";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, tel);

		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
			String password = rs.getString("Password");
//			String gender = rs.getString("Gender");
			AdminAccount user = new AdminAccount();
			user.setUserName(tel);
			user.setPassword(password);
//			user.setGender(gender);
			return user;
		}
		return null;
	}

	public static List<Product> queryProduct(Connection conn) throws SQLException {
		String sql = "Select a.Code, a.Name, a.Price, a.description, a.img, a.quantity from Product a ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			String code = rs.getString("Code");
			String name = rs.getString("Name");
			float price = rs.getFloat("Price");
			String description = rs.getString("Description");
			String img = rs.getString("Img");
			int quantity = rs.getInt("quantity");
			Product product = new Product();
			product.setCode(code);
			product.setName(name);
			product.setPrice(price);
			product.setDescription(description);
			product.setImg(img);
			product.setQuantity(quantity);
			list.add(product);
		}
		return list;
	}

	public static Product findProduct(Connection conn, String code) throws SQLException {
		String sql = "Select a.Code, a.Name, a.Price, a.description, a.img, a.quantity from Product a where a.Code=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, code);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String name = rs.getString("Name");
			float price = rs.getFloat("Price");
			String description = rs.getString("Description");
			String img = rs.getString("Img");
			int quantity = rs.getInt("Quantity");
			Product product = new Product(code, name, price, description, img, quantity);
			return product;
		}
		return null;
	}

	public static void updateProduct(Connection conn, Product product) throws SQLException {
		String sql = "Update Product set Name =?, Price=?, Description=?, Img=? where Code=? ";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getName());
		pstm.setFloat(2, product.getPrice());		
		pstm.setString(3, product.getDescription());
		pstm.setString(4, product.getImg());
		pstm.setString(5, product.getCode());
		pstm.executeUpdate();
	}

	public static void insertProduct(Connection conn, Product product) throws SQLException {
		String sql = "Insert into Product(Code, Name,Price, Description, Img, Quantity) values (?,?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, product.getCode());
		pstm.setString(2, product.getName());
		pstm.setFloat(3, product.getPrice());
		pstm.setString(4, product.getDescription());
		pstm.setString(5, product.getImg());
		pstm.setInt(6, product.getQuantity());

		pstm.executeUpdate();
	}

	public static void deleteProduct(Connection conn, String code) throws SQLException {
		String sql = "Delete From Product where Code= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, code);

		pstm.executeUpdate();
	}
	
// Search product
	public static List<Product> searchByName(Connection conn, String txt) throws SQLException {
		String sql = "Select a.CODE, a.NAME, a.PRICE, a.DESCRIPTION, a.IMG from PRODUCT a where a.NAME like ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, "%" + txt + "%");
		
		ResultSet rs = pstm.executeQuery();
		List<Product> list = new ArrayList<Product>();
		while (rs.next()) {
			String code = rs.getString("CODE");
			String name = rs.getString("NAME");
			float price = rs.getFloat("PRICE");
			String description = rs.getString("DESCRIPTION");
			String img = rs.getString("IMG");
			Product product = new Product();
			product.setCode(code);
			product.setName(name);
			product.setPrice(price);
			product.setDescription(description);
			product.setImg(img);
			list.add(product);
		}
		return list;
	}
	
//	HIEN TAT CA CAC SAN PHAM CUA NGUOI DUNG KHI NGUOI DUNG DANG NHAP
	public static List<Cart> queryProductUser(Connection conn, String tel) throws SQLException {
		
		String sql = "Select a.Code, a.Name, a.Price, a.Quantity from PRODUCT_USER a where a.TEL=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, tel);

		ResultSet rs = pstm.executeQuery();
		List<Cart> list = new ArrayList<Cart>();
		while (rs.next()) {
			String code = rs.getString("Code");
			String name = rs.getString("Name");
			float price = rs.getFloat("Price");
			int quantity = rs.getInt("Quantity");
			
			Cart cart = new Cart();
			cart.setCode(code);
			cart.setName(name);
			cart.setPrice(price);
			cart.setQuantity(quantity);
			list.add(cart);
		}
		return list;
	
	}
	
	public static Cart findProductUser(Connection conn, String tel) throws SQLException {
		
		String sql = "Select a.Code, a.Name, a.Price, a.TEL from PRODUCT_USER a where a.TEL=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, tel);

		ResultSet rs = pstm.executeQuery();

		while (rs.next()) {
			String code = rs.getString("Code");
			String name = rs.getString("Name");
			float price = rs.getFloat("Price");
			int quantity = rs.getInt("Quantity");
			Cart cart  = new Cart(code, name, price, tel, quantity);
			return cart;
		}
		return null;
		
	}

	public static void updateProductUser(Connection conn, Cart cartT, String tel) throws SQLException {
		String sql = "Update PRODUCT_USER set QUANTITY = ? where tel = ? and code = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, cartT.getQuantity());
		pstm.setString(2, tel);
		pstm.setString(3, cartT.getCode());
		pstm.executeUpdate();
	}
	
// ADD TO CART	
	public static void insertProductUser(Connection conn, Cart cart) throws SQLException {
		String sql = "Insert into PRODUCT_USER(Code, Name, Price, Tel, Quantity) values (?,?,?,?,?)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, cart.getCode());
		pstm.setString(2, cart.getName());
		pstm.setFloat(3, cart.getPrice());
		pstm.setString(4, cart.getTel());
		pstm.setInt(5, cart.getQuantity());

		pstm.executeUpdate();
	}
	
//	DELETE PRODUCT USER 
	public static void deleteProductUser(Connection conn, String code, String tel) throws SQLException {
		String sql = "Delete From PRODUCT_USER where Code= ? and Tel=?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, code);
		pstm.setString(2, tel);

		pstm.executeUpdate();
	}
	
	public static void deleteAllProductUser(Connection conn, String tel) throws SQLException {
		String sql = "Delete From PRODUCT_USER where Tel=?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, tel);

		pstm.executeUpdate();
	}
	
	public static void insertUser(Connection conn, AdminAccount user) throws SQLException{
		String sql = "Insert into ADMIN_ACCOUNT(USER_NAME, TEL, EMAIL, PASSWORD, ISADMIN) values (?,?,?,?,0)";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, user.getUserName());
		pstm.setString(2, user.getTel());
		pstm.setString(3, user.getEmail());
		pstm.setString(4, user.getPassword());
//		pstm.setInt(5, user.getIsAdmin());

		pstm.executeUpdate();
		
	}
	
//	TEST 
	public static AdminAccount login(Connection conn, //
			String tel, String password) throws SQLException {

		String sql = "Select a.TEL, a.Password, a.USER_NAME, a.EMAIL, a.ISADMIN from ADMIN_ACCOUNT a " //
				+ " where a.TEL = ? and a.password= ?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, tel);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();

		if (rs.next()) {
//			String gender = rs.getString("Gender");
//			String tel = rs.getString("tel");
			String username = rs.getString("user_name");
			String email = rs.getString("email");
			int isAdmin = rs.getInt("isAdmin");
			AdminAccount user = new AdminAccount();
			user.setTel(tel);
			user.setPassword(password);
			user.setUserName(username);			
			user.setEmail(email);
			user.setIsAdmin(isAdmin);
//			user.setGender(gender);
			return user;
		}
		return null;
	}
}
