package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Subjects
 */
@WebServlet("/Subjects")
public class Subjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Subjects() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] Subjects = request.getParameterValues("course");

		if (Subjects == null || Subjects.length == 0) {
			request.setAttribute("error", "<span style='color:red;'>Choose one!!!</span>");
			request.getRequestDispatcher("homework.jsp").forward(request, response);

		} else {
			request.setAttribute("Subjects", Subjects);

			request.getRequestDispatcher("show.jsp").forward(request, response);

		}

	}
}
