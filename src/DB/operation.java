package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class operation {
	
	public static Connection getCon() throws ClassNotFoundException, SQLException {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Stu_Class?useSSL=false&useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String password = "123456";
		
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, user, password);
		return con;
	}
	public static void release(
			Connection con,
			Statement stmt,
			ResultSet rs) 
			throws SQLException {
		if (con != null) {
			con.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (rs != null) {
			rs.close();
		}
	}
}
