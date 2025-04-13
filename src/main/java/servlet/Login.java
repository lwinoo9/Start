package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBean;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");// if HTML tag not work = add this
		String name = request.getParameter("userName");
		String passWord = request.getParameter("userPass");
		if (name.equals("") || passWord.equals("")) {
			request.setAttribute("error", "<span style='color:red;'>Fill the blank</span>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {

			UserBean user = (UserBean) request.getServletContext().getAttribute("app_obj");
//			String appPass = (String) request.getServletContext().getAttribute("userPass");

			if (user.getName().equals(name) && user.getPassword().equals(passWord)) {
				request.getSession().setAttribute("loginUser", name);
				response.sendRedirect("welcome.jsp");
			} else {
				request.setAttribute("error",
						"<div class='alert alert-danger text-center'>Wrong username or password!</div>");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}

		}

	}

}
