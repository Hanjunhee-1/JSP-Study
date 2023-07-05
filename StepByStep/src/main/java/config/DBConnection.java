package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		
		try {
			String jdbcURL = "jdbc:mysql://localhost:3306/jsp_study";
			String user = "root";
			String pw = "1234";
			
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(jdbcURL, user, pw);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
