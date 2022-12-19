package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.AdminAccount;
import utils.MyUtils;

@WebServlet(urlPatterns = { "/userInfo" })
public class UserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

		// Nếu người dùng đã login thì forward (chuyển tiếp) tới trang
				// /WEB-INF/views/userInfoView.jsp
		RequestDispatcher dispatcher //
				= this.getServletContext().getRequestDispatcher("/WEB-INF/views/userInfoView.jsp");
		dispatcher.forward(request, response);
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
