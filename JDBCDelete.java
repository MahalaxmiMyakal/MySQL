package JDBC_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCDelete {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{

		//Register the Driver class
		Class.forName("com.mysql.cj.jdbc.Driver");

		//Create connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","root");

		//Create Statement
		PreparedStatement ps=con.prepareStatement("Delete from person where id=?");
		ps.setInt(1,2);

		//Execute Query
		int i=ps.executeUpdate();
		System.out.println("Record Deleted Successfully");
	}
}