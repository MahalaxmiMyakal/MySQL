package JDBC_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCSelect {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		//Register the Driver class
		Class.forName("com.mysql.cj.jdbc.Driver");

		//Create connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","root");

		//Create Statement
		Statement stm=con.createStatement();

		//Execute query
		ResultSet rs=stm.executeQuery("select * from person");

		while(rs.next()) {
			System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3));
		}
		stm.close();
	}
}