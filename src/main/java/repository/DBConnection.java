package repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jwd61", "root",
					"12345678A");
			System.out.println("Connected to: " + connection);
		} catch (ClassNotFoundException e) {
			System.out.println("Driver error: " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("Connection error: " + e.getMessage());
		}
	}

}
