package site;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginService 
{ 
	public boolean ValidateLogin(String username, String password)
	{
		try 
		{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_register", "root", "");
			
			PreparedStatement prepstatement = connect.prepareStatement("SELECT * FROM users WHERE user_name='"+username+"' and user_password='"+password+"' ");
			ResultSet result = prepstatement.executeQuery();
			
			if(result.next())
			{
				return true;
			}
			
			prepstatement.close();
			connect.close();
			result.close();
		}
		catch(Exception exce)
		{
		
		}
		
		return false;
	}
}
