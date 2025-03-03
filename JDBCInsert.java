package JDBC_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDBCInsert {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		//Register the Driver class
		Class.forName("com.mysql.cj.jdbc.Driver");

		//Create connection
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anp_d0453","root","root");

		//Create Statement
		PreparedStatement ps=con.prepareStatement("Insert into person values(?,?,?)");
		ps.setInt(1,3);
		ps.setString(2,"Akanksha");
		ps.setInt(3,22);

		//Execute Query
		int i=ps.executeUpdate();
		System.out.println("Record Inserted Successfully");


	}

}
