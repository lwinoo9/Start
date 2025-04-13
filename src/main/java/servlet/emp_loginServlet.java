package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmployeeBean;
import model.LoginBean;
import repository.EmployeeRepository;

/**
 * Servlet implementation class emp_loginServlet
 */
@WebServlet("/emp_loginServlet")
public class emp_loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public emp_loginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String empIdStr = request.getParameter("eid");
			String empName = request.getParameter("ename");

			if (empIdStr == null || empIdStr.trim().isEmpty()) {
				request.getSession().setAttribute("error", "Employee ID cannot be empty");
				response.sendRedirect("employeeLogin.jsp");
				return;
			}

			if (empName == null || empName.trim().isEmpty()) {
				request.getSession().setAttribute("error", "Employee name cannot be empty");
				response.sendRedirect("employeeLogin.jsp");
				return;
			}
			int empId = Integer.parseInt(empIdStr);
			LoginBean emp = new LoginBean();
			emp.setEmpId(empId);
			emp.setName(empName);

			EmployeeRepository empRepo = new EmployeeRepository();
			EmployeeBean resEmp = empRepo.checkLogin(emp);
			if (resEmp == null) {
				request.getSession().setAttribute("error", "Invalid employee ID or name");
				response.sendRedirect("employeeLogin.jsp");
			} else {
				request.getSession().setAttribute("LoginUser", resEmp);
				List<EmployeeBean> allEmployees = empRepo.getAllEmployees();
				if (allEmployees == null || allEmployees.isEmpty()) {
					request.getSession().setAttribute("error", "No employee data found");
				}
				request.setAttribute("employeeList", allEmployees);
				request.getRequestDispatcher("welcome.jsp").forward(request, response);
				
			}
		} catch (NumberFormatException e) {
			request.getSession().setAttribute("error", "Employee ID must be a valid number");
			response.sendRedirect("employeeLogin.jsp");
		} catch (Exception e) {
			e.printStackTrace();
			request.getSession().setAttribute("error", "Login failed: " + e.getMessage());
			response.sendRedirect("employeeLogin.jsp");
		}

	}

}
