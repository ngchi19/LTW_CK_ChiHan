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

import models.AdminAccount;
import models.Product;
import models.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

//@WebServlet("/CreateUserAccServlet")
@WebServlet(urlPatterns = { "/createUserAcc" })
public class CreateUserAccServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

    public CreateUserAccServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/registerView.jsp");
		dispatcher.forward(request, response);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
		
		Connection conn = MyUtils.getStoredConnection(request);

		String username = (String) request.getParameter("username");
		String tel = (String) request.getParameter("tel");
		String email = (String) request.getParameter("email");
		String pass = (String) request.getParameter("pass");
		
		int isAdmin = 0;		
		
		AdminAccount user = new AdminAccount(username, tel, email, pass, isAdmin);

		String errorString = null;


		if (errorString == null) {
			try {
				DBUtils.insertUser(conn, user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				errorString = "Tel existed";
			}
		}

		// Lưu thông tin vào request attribute trước khi forward sang views.
		request.setAttribute("errorString", errorString);
		request.setAttribute("user", user);

		// Nếu có lỗi forward (chuyển tiếp) sang trang 'register'.
		if (errorString != null) {
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/registerView.jsp");
			dispatcher.forward(request, response);
		}
		// Nếu mọi thứ tốt đẹp.
		// Redirect (chuyển hướng) sang trang login.
		else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
		
		
		
//		doGet(request, response);
	}

}
