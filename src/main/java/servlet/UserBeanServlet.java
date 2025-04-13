package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserBean;

/**
 * Servlet implementation class UserBeanServlet
 */
@WebServlet("/useBean")
public class UserBeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserBeanServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		request.setAttribute("userObj", obj);
		
		ArrayList<String> stringList = new ArrayList<String>();
		stringList.add("Apple");
		stringList.add("Orange");
		stringList.add("Mango");
		request.setAttribute("stringList", stringList);
		
		

		List<UserBean> userList = new ArrayList<>();
		UserBean obj = new UserBean();
		obj.setName("Coray");
		obj.setEmail("coray@gmail.com");
		obj.setPassword("12345678");

		UserBean obj2 = new UserBean();
		obj2.setName("Oliver");
		obj2.setEmail("oliver@gmail.com");
		obj2.setPassword("7890");


		userList.add(obj);
		userList.add(obj2);
		
		request.setAttribute("userList", userList);
		request.getRequestDispatcher("userbean.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
