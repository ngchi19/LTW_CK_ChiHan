package utils;

import java.sql.Connection;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.AdminAccount;
import models.Cart;
import models.UserAccount;

public class MyUtils {

	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";

	private static final String ATT_NAME_USER_NAME = "ATTRIBUTE_FOR_STORE_USER_NAME_IN_COOKIE";

	// Lưu trữ Connection vào attribute của request.
	// Thông tin lưu trữ này chỉ tồn tại trong th�?i gian yêu cầu (request)
	// cho tới khi dữ liệu được trả v�? trình duyệt người dùng.
	public static void storeConnection(ServletRequest request, Connection conn) {
		request.setAttribute(ATT_NAME_CONNECTION, conn);
	}

	// Lấy đối tượng Connection đã được lưu trữ trong attribute của request.
	public static Connection getStoredConnection(ServletRequest request) {
		Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
		return conn;
	}

	// Lưu trữ thông tin người dùng đã login vào Session.
	public static void storeLoginedUser(HttpSession session, AdminAccount user) {
		// Trên JSP có thể truy cập thông qua ${loginedUser}
		session.setAttribute("loginedUser", user);
	}

	// Lấy thông tin người dùng lưu trữ trong Session.
	public static AdminAccount getLoginedUser(HttpSession session) {
		AdminAccount loginedUser = (AdminAccount) session.getAttribute("loginedUser");
		return loginedUser;
	}

	// Lưu thông tin người dùng vào Cookie.
	public static void storeUserCookie(HttpServletResponse response, AdminAccount user) {
		System.out.println("Store user cookie");
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, user.getUserName());
		// 1 ngày (đã đổi ra giây)
		cookieUserName.setMaxAge(24 * 60 * 60);
		response.addCookie(cookieUserName);
	}

	public static String getUserNameInCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}

	// Xóa Cookie của người dùng
	public static void deleteUserCookie(HttpServletResponse response) {
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
		// 0 giây. (Cookie này sẽ hết hiệu lực ngay lập tức)
		cookieUserName.setMaxAge(0);
		response.addCookie(cookieUserName);
	}
	
	
//	LOGIN USER 
	// Lưu trữ thông tin người dùng đã login vào Session.
		public static void storeLoginedUserAcc(HttpSession session, UserAccount user) {
			// Trên JSP có thể truy cập thông qua ${loginedUserAcc}
			session.setAttribute("loginedUserAcc", user);
		}
		// Lưu thông tin người dùng vào Cookie.
		public static void storeUserAccCookie(HttpServletResponse response, UserAccount user) {
			System.out.println("Store user cookie");
			Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, user.getUserName());
			// 1 ngày (đã đổi ra giây)
			cookieUserName.setMaxAge(24 * 60 * 60);
			response.addCookie(cookieUserName);
		}
	//END LOGIN USER
		
		
//CART USER 
		// Lấy thông tin người dùng lưu trữ trong Session.
		public static UserAccount getLoginedUserAcc(HttpSession session) {
			UserAccount loginedUser = (UserAccount) session.getAttribute("loginedUserAcc");
			return loginedUser;
		}
		//lấy thông tin sản phẩm của người dùng trong session
		public static Cart getCartProd(HttpSession session) {
			Cart cartProd = (Cart) session.getAttribute("cartProd");
			return cartProd;
		}
	
//END CART USER 
}