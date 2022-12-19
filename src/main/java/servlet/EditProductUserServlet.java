package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthOptionPaneUI;

import models.Cart;
import utils.DBUtils;
import utils.MyUtils;

@WebServlet(urlPatterns = { "/editProductUser" })
public class EditProductUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditProductUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
		
		Cart cartT = new Cart(code, name, price, tel, quantity);

		String errorString = null;

		try {
			DBUtils.updateProductUser(conn, cartT, tel);
		} catch (SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		
		System.out.println(tel);
		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("cartT", cartT);

		// Nếu có lỗi forward sang trang cart.
		if (errorString != null) {
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/cartView.jsp");
			dispatcher.forward(request, response);
		}
		// Nếu mọi thứ tốt đẹp.
		// Redirect sang trang cart.
		else {
			response.sendRedirect(request.getContextPath() + "/cartInfo?tel=" + tel);
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
//		doGet(request, response);
	}
}
