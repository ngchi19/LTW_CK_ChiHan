package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.AdminAccount;
import models.Cart;
import models.Product;
import models.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

//@WebServlet("/AddToCart")
@WebServlet(urlPatterns = { "/addToCart" })
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddToCartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub


//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Lưu dữ liệu vào para
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();

		// Kiểm tra ngư�?i dùng đã đăng nhập (login) chưa.
		AdminAccount loginedUser = MyUtils.getLoginedUser(session);

		// Nếu chưa đăng nhập (login).
		if (loginedUser == null) {
			// Redirect (Chuyển hướng) tới trang login.
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		// Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
		request.setAttribute("user", loginedUser);
		
		// Nếu ngư�?i dùng đã login thì
		//Kết nối csdl
		Connection conn = MyUtils.getStoredConnection(request);

		String code = (String) request.getParameter("code");
		String name = (String) request.getParameter("name");
		String priceStr = (String) request.getParameter("price");
		String tel = (String) request.getParameter("tel");
		String quantityStr = (String) request.getParameter("quantity");
		
		float price = 0;
		try {
			price = Float.parseFloat(priceStr);
		} catch (Exception e) {
		}
		
		int quantity = 0;
		try {
			quantity = Integer.parseInt(quantityStr);
		} catch (Exception e) {
		}
		
		Cart cart = new Cart(code, name, price, tel, quantity);

		String errorString = null;

		if (errorString == null) {
			try {
				DBUtils.insertProductUser(conn, cart);
			} catch (SQLException e) {
				e.printStackTrace();
				errorString = "Code existed";
			}
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("cart", cart);

		// Nếu có lỗi thì hiển thị dòng Báo lỗi.
		if (errorString != null) {
			System.out.println("Báo lỗi");
		}
		// Nếu m�?i thứ tốt đẹp.
		// Redirect (chuyển hướng) sang trang HomeServlet.
		else {
			response.sendRedirect(request.getContextPath() + "/home");
		}
		
	}

}
