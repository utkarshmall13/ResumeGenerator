package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

public class LoginAccess {

	public static boolean CheckAccount(String username,String password){
		Connection connection=null;
		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select count(*) from accounts where username=? and password=?");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet rs= pstmt.executeQuery();	
			while (rs.next()){
				System.out.println(rs.getInt(1));
				if(rs.getInt(1)==1)return true;
				else return false;
			}
		} catch(SQLException sqle){
			System.out.println("SQL exception when getting password");
			System.out.println(sqle);
			return false;
		} finally{
			closeConnection(connection);
		}
		return false;
	}
	
	public static int makeAccount(String username,String password,String fname,String mname,String lname,String rollno,Date dob,String sex){
		Connection connection=null;
		try{
			connection=getConnection();
			PreparedStatement pstmt= connection.prepareStatement("select count(*) from accounts where username=?");
			pstmt.setString(1, username);
			ResultSet rs= pstmt.executeQuery();	
			while (rs.next()){
				System.out.println(rs.getInt(1));
				if(rs.getInt(1)!=0){
					return -1;
				}
				break;
			}
			pstmt= connection.prepareStatement("select count(*) from universityTable where rollno=? and fname=? and lname=?");
			pstmt.setString(1, rollno);
			pstmt.setString(2, fname);
			pstmt.setString(3, lname);
			rs= pstmt.executeQuery();	
			while (rs.next()){
				System.out.println(rs.getInt(1));
				if(rs.getInt(1)==0){
					return -3;
				}
				break;
			}
			pstmt= connection.prepareStatement("insert into fixed_info values (?,?,?,?,?,?,?);");
			pstmt.setString(1, username);
			pstmt.setString(2, fname);
			pstmt.setString(3, mname);
			pstmt.setString(4, lname);
			pstmt.setString(5, rollno);
			java.sql.Date dobsql = new java.sql.Date(dob.getTime());
			pstmt.setDate(6, dobsql);
			pstmt.setString(7, sex);
			int ps= pstmt.executeUpdate();
			pstmt= connection.prepareStatement("insert into accounts values (?,?);");
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ps= pstmt.executeUpdate();
			System.out.println("asd");
		} catch(SQLException sqle){
			System.out.println("SQL exception when creating account");
			System.out.println(sqle);
			return -2;
		} finally{
			closeConnection(connection);
		}
		return 0;
	}
	
	static Connection getConnection() {
		String dbURL = "jdbc:postgresql://10.105.1.12/cs387";
        String dbUser = "db130050037";
        String dbPass = "8233844713";
        Connection connection=null;
        try {
			Class.forName("org.postgresql.Driver");
			connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
			connection.setAutoCommit(false);
        } catch(ClassNotFoundException cnfe){
        	System.out.println("JDBC Driver not found");
        } catch(SQLException sqle){
        	System.out.println("Error in getting connetcion from the database");
        }
        
        return connection;
	}
	
	static void closeConnection(Connection connection) {
		try{
			connection.commit();
			connection.close();
		} catch(SQLException sqle) {
			System.out.println("Error in close database connection");
		}
	}
	
	public static Date string2Date(String dateString){
		Date date=null;
		try {
		    date = new SimpleDateFormat("yyyy-MM-dd").parse(dateString);
		    return date;
		}
		catch (ParseException e) {
		    // Show error message to enduser about the wrong format and forward back to the JSP with the form.
		    return date;
		}
	}
}
