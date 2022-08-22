package mood_wear;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class test {

	public static void main(String[] args) {
		Connection con = null;
		
		try {

			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_DB?serverTimezone=UTC", "root","MY!jazz92");
			System.out.println("success");
			Statement stmt = conn.createStatement();

		} catch (SQLException ex) {
			System.out.println("SQLException" + ex);
		}
	}
}
