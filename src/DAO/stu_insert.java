package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.operation;
import entities.student;

public class stu_insert  {
	
	student s =null;
	
	Connection conn = null;
	
	PreparedStatement pre = null;
	
	ResultSet res = null;
	
	
	public stu_insert(student stu)
	{
		s = new student();
	    
		s.setStuno(stu.getStuno());
		
		s.setStuname(stu.getStuname());
		
		s.setStuage(stu.getStuage());
		
		s.setStusex(stu.getStusex());
		
		s.setStuclass(stu.getStuclass());
		
	}
	
	public int insert() throws ClassNotFoundException, SQLException
	{
		
		String sql = "insert into student(stuno,stuname,stuage,stusex,stuclass) values(?,?,?,?,?)";
		
		operation db = new operation();
		
		conn = db.getCon();
		
		pre = conn.prepareStatement(sql);
		
		pre.setString(1, s.getStuno());
		
		pre.setString(2, s.getStuname());
		
		pre.setInt(3, s.getStuage());
		
		pre.setString(4, s.getStusex());
		
		pre.setInt(5, s.getStuclass());
		
		int successful = pre.executeUpdate();
		
		operation.release(conn, pre, res);
		
		return successful;
		
	}
	
	

}
