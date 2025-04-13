package repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.EmployeeBean;
import model.LoginBean;

public class EmployeeRepository {
	public int insertEmployee(EmployeeBean emp) {
		int i = 0;
		Connection con = JDBCConnection.getConnection();
		String sql = "insert into employee(name,age,position,salary) values (?,?,?,?)";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, emp.getName());
			ps.setInt(2, emp.getAge());
			ps.setString(3, emp.getPosition());
			ps.setDouble(4, emp.getSalary());
			i = ps.executeUpdate();

		} catch (SQLException e) {
			System.out.println("Insert Employee :" + e.getMessage());
		}
		return i;

	}

	public int getMaxId() {
		int i = 0;
		Connection con = JDBCConnection.getConnection();
		String sql = "select max(emp_id) from employee";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.print("Max Error: " + e.getMessage());
		}

		return i;
	}

	public EmployeeBean checkLogin(LoginBean emp) {
		EmployeeBean obj = null;
		Connection con = JDBCConnection.getConnection();
		String sql = "select * from employee where emp_id=? and name=?";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, emp.getEmpId());
			ps.setString(2, emp.getName());

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				obj = new EmployeeBean();
				obj.setEmpId(rs.getInt(1));
				obj.setName(rs.getString(2));
				obj.setAge(rs.getInt(3));
				obj.setPosition(rs.getString(4));
				obj.setSalary(rs.getDouble(5));
			}
		} catch (SQLException e) {
			System.out.print("Login Error: " + e.getMessage());
		}

		return obj;
	}
	
	public List<EmployeeBean> getAllEmployees() throws SQLException {
	    List<EmployeeBean> employees = new ArrayList<>();
	    String query = "SELECT * FROM employee";
	    
	    try (Connection conn = JDBCConnection.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(query);
	         ResultSet rs = stmt.executeQuery()) {
	        
	        while (rs.next()) {
	            EmployeeBean emp = new EmployeeBean();
	            emp.setEmpId(rs.getInt("emp_id"));
	            emp.setName(rs.getString("name"));
	            emp.setAge(rs.getInt("age"));
	            emp.setPosition(rs.getString("position"));
	            emp.setSalary(rs.getInt("salary"));
	            employees.add(emp);
	        }
	    }
	    return employees;
	}

}
