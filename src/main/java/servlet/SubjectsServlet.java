package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserSubject;

@WebServlet("/SubjectsServlet")
public class SubjectsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SubjectsServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserSubject users = new UserSubject();
		users.setName(request.getParameter("name"));
		users.setDob(request.getParameter("dob"));
		users.setGender(request.getParameter("gender"));
		users.setKnowledge(request.getParameterValues("knowledge"));
		users.setBackend(request.getParameter("backend"));

		request.getRequestDispatcher("showSubjectTable.jsp").forward(request, response);

	}

}
