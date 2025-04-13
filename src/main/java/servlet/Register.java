package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserBean;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("userName");
		String email = request.getParameter("eMail");
		String passWord = request.getParameter("userPass");
		if (name.equals("") || email.equals("") || passWord.equals("")) {
			request.setAttribute("error", "<span style='color:red;'>Fill the blank</span>");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		} else {

		}

		UserBean obj = new UserBean();
		obj.setName(name);
		obj.setEmail(email);
		obj.setPassword(passWord);

		request.getServletContext().setAttribute("app_obj", obj);
//		request.getServletContext().setAttribute("eMail", email);
//		request.getServletContext().setAttribute("userPass", passWord);
		response.sendRedirect("login.jsp");

	}

}
