package Airline.DTO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbSet {
	static Connection con1;
	public static Connection getConnection() {
		
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con1 = DriverManager.getConnection(url, "swingflow", "happyday");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con1;
	}

}
