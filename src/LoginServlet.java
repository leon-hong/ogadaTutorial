
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = formatter.format(new java.util.Date());

		String USER_ID = "abcd";
		String USER_PW = "1234";

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		boolean isSuccess = false;
		if (USER_ID.equals(id) && USER_PW.equals(pw)) {
			isSuccess = true;
		}

		String isLogin = "N";
		String pathRes = "bootStrapLogin.jsp";
		if (isSuccess) {
			isLogin = "Y";
			pathRes = "main.jsp";
		}

		request.setAttribute("isLogin", isLogin);
		request.setAttribute("today", today);

		RequestDispatcher view = request.getRequestDispatcher(pathRes);
		view.forward(request, response);
	}

}
