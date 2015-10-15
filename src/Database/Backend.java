package Database;

import java.io.*;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;



public class Backend {
	public static void printToFile(ArrayList<ArrayList<String>> details){
		try{
		PrintWriter writer = new PrintWriter("/home/utkarsh/resumeG/ach.txt");
		for(int i=0;i<details.get(0).size();i++){
			if(details.get(0).get(i)!=null)	writer.println(details.get(0).get(i));
			if(details.get(1).get(i)!=null)	writer.println(details.get(1).get(i));
		}
		writer.close();
		
		PrintWriter writer1 = new PrintWriter("/home/utkarsh/resumeG/proj.txt");
		writer1.println("*");
		for(int i=0;i<details.get(2).size();i++){
			if(details.get(2).get(i)!=null)	writer1.println(details.get(2).get(i));
			if(details.get(3).get(i)!=null)	writer1.println(details.get(3).get(i));
			if(details.get(4).get(i)!=null)	writer1.println(details.get(4).get(i));
			if(details.get(5).get(i)!=null)	writer1.println(details.get(5).get(i));
			if(details.get(6).get(i)!=null)	writer1.println(details.get(6).get(i));
			if(details.get(7).get(i)!=null)	writer1.println(details.get(7).get(i));
			if(details.get(8).get(i)!=null)	writer1.println(details.get(8).get(i));
			if(details.get(9).get(i)!=null)	writer1.println(details.get(9).get(i));
			writer1.println("*");
		}
		writer1.close();
		}
		catch(FileNotFoundException e){System.out.println(e);}
	}
	
	public static void createResume(ArrayList<ArrayList<String>> details){
			printToFile(details);
			try{
				String command = "bash /home/utkarsh/resumeG/remove.sh";
			    Process proc1 = Runtime.getRuntime().exec(command);
				proc1.waitFor();
			}
			catch(InterruptedException e){
				System.out.println(e);
			}
			catch(IOException e){
				System.out.println(e);
			}
		}
		
	public static void uploadResume(String id,File resume){
		Connection conn=null;
		try{
		conn=LoginAccess.getConnection();
		String sql = "INSERT INTO test_pdf (id, f) "+ "VALUES(?,?)";
        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setString(1,id);
        
        FileInputStream fis = new  FileInputStream(resume);
        stmt.setBinaryStream(2, fis, (int) resume.length());
        stmt.execute();
	}catch(SQLException e){System.out.println(e);}catch(FileNotFoundException e){}
		finally{}

	}
	
	public static void downloadResume(String id,File resume){
		Connection conn=null;
		try{
		conn=LoginAccess.getConnection();
		FileOutputStream fos = new FileOutputStream(resume);
		PreparedStatement st=conn.prepareStatement("SELECT f FROM test_pdf where id=? LIMIT 1");
		st.setString(1,id);
		ResultSet rs = st.executeQuery();
		        if (rs != null) {
		            while (rs.next()) {
		            	byte[] fileBytes = new byte[1024];
		                InputStream is = rs.getBinaryStream("f");
		                while (is.read(fileBytes) > 0) {
		                    fos.write(fileBytes);
		                }
		            }
		            rs.close();
		        }   
		}
		catch (IOException ex) {System.out.println("IO");}
		catch (SQLException ex) {System.out.println("SQLEXCP");}
		}
}