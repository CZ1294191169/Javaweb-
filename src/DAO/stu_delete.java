package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.operation;
import entities.student;

public class stu_delete {
	
	student s =null;
	
	Connection conn = null;
	
	PreparedStatement pre = null;
	
	ResultSet res = null;
	
	public stu_delete(student stu)
	{
		s = new student();
		
		s.setStuno(stu.getStuno());
	}
	
	public int delete() throws ClassNotFoundException, SQLException
	{
		String sql = "delete from student where stuno = ?";
		
		operation db = new operation();
		
		conn = db.getCon();
		
		pre = conn.prepareStatement(sql);
		
		pre.setString(1, s.getStuno());
		
		int successful = pre.executeUpdate();
		
		operation.release(conn, pre, res);
		
		return successful;
		
	}

}
