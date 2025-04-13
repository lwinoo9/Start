package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmployeeBean;
import repository.EmployeeRepository;

@WebServlet("/emp_register")
public class emp_register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public emp_register() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("ename");
		String age = request.getParameter("eage");
		String position = request.getParameter("eposition");
		String salary = request.getParameter("esalary");

		if (name.equals("") || age.equals("") || position.equals("") || salary.equals("")) {
			request.setAttribute("error", "<span style='color:red;'>Fill the blank</span>");
			request.getRequestDispatcher("employeeRegister.jsp").forward(request, response);
		} else {
			int emp_age = Integer.parseInt(age);
			double emp_salary = Double.parseDouble(salary);
			EmployeeBean emp = new EmployeeBean();
			emp.setName(name);
			emp.setAge(emp_age);
			emp.setPosition(position);
			emp.setSalary(emp_salary);

			EmployeeRepository empRepo = new EmployeeRepository();
			int result = empRepo.insertEmployee(emp);

			if (result > 0) {
				int empId = empRepo.getMaxId();
				request.setAttribute("empId", empId);
				request.getRequestDispatcher("employeeLogin.jsp").forward(request, response);
//				response.sendRedirect("employeeLogin.jsp");
			} else {
				request.setAttribute("erro", "Insert Failed");
				request.getRequestDispatcher("employeeRegister.jsp").forward(request, response);
			}

		}

	}

}
