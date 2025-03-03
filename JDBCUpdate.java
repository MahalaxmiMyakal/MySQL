package JDBC_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCUpdate {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{

		//Register the Driver class
		Class.forName("com.mysql.cj.jdbc.Driver");

		//Create connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","root");

		//Create Statement
		PreparedStatement ps=con.prepareStatement("update person set name=? where id=?");
		ps.setString(1,"Mahalaxmi");
		ps.setInt(2,1);
		
		//Execute Query
		int i=ps.executeUpdate();
		System.out.println("Record Updated Successfully");
	}
}