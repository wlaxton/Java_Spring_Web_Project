package site;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class RegisterService 
{ 
	public void Register(String username, String password, String street1, String street2, String city, String state, String zip)
	{
		
		try 
		{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register", "root", "");
			
			Statement userstmt = connect.createStatement();
			userstmt.execute("INSERT INTO users(user_name, user_password) VALUES ('"+username+"', '"+password+"')");
			
			
			
			
			Statement addstatement = connect.createStatement();
			addstatement.execute("INSERT INTO `user_address`(`street1`, `street2`, `city`, `state`, `zip`) "
			+ "VALUES ('"+street1+"', '"+street2+"', '"+city+"', '"+state+"', '"+zip+"')");
			
			
			
			userstmt.close();
			addstatement.close();
			connect.close();
		}
		
		catch(Exception exce)
		{
			System.out.println("LOL MY BAD DOG");
		}

	}
}
