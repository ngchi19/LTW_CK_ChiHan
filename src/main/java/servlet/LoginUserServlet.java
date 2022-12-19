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
import javax.servlet.http.HttpSession;

import models.AdminAccount;
import models.UserAccount;
import utils.DBUtils;
import utils.MyUtils;

//@WebServlet("/LoginUserServlet")
@WebServlet(urlPatterns = { "/loginUser" })
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Forward tới trang /WEB-INF/views/loginView.jsp
				// (Ngư�?i dùng không thể truy cập trực tiếp
				// vào các trang JSP đặt trong thư mục WEB-INF).
				RequestDispatcher dispatcher //
						= this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginUserView.jsp");

				dispatcher.forward(request, response);
		
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String tel = request.getParameter("tel");
		String password = request.getParameter("password");
		String rememberMeStr = request.getParameter("rememberMe");
		boolean remember = "Y".equals(rememberMeStr);

		UserAccount userAcc = null;
		boolean hasError = false;
		String errorString = null;

		if (tel == null || password == null || tel.length() == 0 || password.length() == 0) {
			hasError = true;
			errorString = "Required username and password!";
		} else {
			Connection conn = MyUtils.getStoredConnection(request);
//			try {
//				// Tìm user trong DB.
//				userAcc = DBUtils.findUserAccount(conn, tel, password);
//
//				if (userAcc == null) {
//					hasError = true;
//					errorString = "User Tel or password invalid";
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//				hasError = true;
//				errorString = e.getMessage();
//			}
		}
		// Trong trư�?ng hợp có lỗi,
		// forward (chuyển hướng) tới /WEB-INF/views/login.jsp
		if (hasError) {
			userAcc = new UserAccount();
			userAcc.setTel(tel);
			userAcc.setPass(password);

			// Lưu các thông tin vào request attribute trước khi forward.
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", userAcc);

			// Forward (Chuyển tiếp) tới trang /WEB-INF/views/login.jsp
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher("/WEB-INF/views/loginUserView.jsp");

			dispatcher.forward(request, response);
		}
		// Trư�?ng hợp không có lỗi.
		// Lưu thông tin ngư�?i dùng vào Session.
		// Và chuyển hướng sang trang userInfo.
		else {
			HttpSession session = request.getSession();
			MyUtils.storeLoginedUserAcc(session, userAcc);

			// Nếu ngư�?i dùng ch�?n tính năng "Remember me".
			if (remember) {
				MyUtils.storeUserAccCookie(response, userAcc);
			}
			// Ngược lại xóa Cookie
			else {
				MyUtils.deleteUserCookie(response);
			}

			// Redirect (Chuyển hướng) sang trang /userInfo.
			response.sendRedirect(request.getContextPath() + "/home");
		}
		
		
//		doGet(request, response);
	}

}
