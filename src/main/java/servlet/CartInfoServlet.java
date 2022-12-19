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

//@WebServlet("/CartInfoServlet")
@WebServlet(urlPatterns = { "/cartInfo" })
public class CartInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	// hiển thị trang giỏ hàng của người dùng
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		// Kiểm tra người dùng đã đăng nhập (login) chưa.
		AdminAccount loginedUser = MyUtils.getLoginedUser(session);

		// Nếu chưa đăng nhập (login).
		if (loginedUser == null) {
			// Redirect (Chuyển hướng) tới trang login.
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		// Lưu thông tin vào request attribute trước khi forward (chuyển tiếp).
		request.setAttribute("user", loginedUser);

		
		Connection conn = MyUtils.getStoredConnection(request);

		String errorString = null;
		List<Cart> list = null;

		String tel = (String) request.getParameter("tel");

		try {
//			cart = DBUtils.findProductUser(conn, tel);
			list = DBUtils.queryProductUser(conn, tel);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("productUsertList", list);

		// Forward sang /WEB-INF/views/cartView.jsp

		RequestDispatcher dispatcher //
				= this.getServletContext().getRequestDispatcher("/WEB-INF/views/cartView.jsp");
		dispatcher.forward(request, response);

//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub



//		doGet(request, response);
	}

	
		
	
}
