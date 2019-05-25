package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.operation;
import entities.student;

public class stu_change {
	
	student s =null;
	
	Connection conn = null;
	
	PreparedStatement pre = null;
	
	ResultSet res = null;
	
	public stu_change(student stu)
	{
		
		s = new student();
		
		s.setStuno(stu.getStuno());
		
		s.setStuname(stu.getStuname());
		
		s.setStuage(stu.getStuage());
		
		s.setStusex(stu.getStusex());
		
		s.setStuclass(stu.getStuclass());
		
	}
	
	public int change() throws ClassNotFoundException, SQLException
	{
		String sql = "update student set stuname=?,stuage=?,stusex=?,stuclass=? where stuno=?";
		
		operation db = new operation();
		
		conn = db.getCon();
		
		pre = conn.prepareStatement(sql);
		
		pre.setString(1, ""+s.getStuname()+"");
		
		pre.setInt(2, s.getStuage());
		
		pre.setString(3, ""+s.getStusex()+"");
		
		pre.setInt(4, s.getStuclass());
		
		pre.setString(5, ""+s.getStuno()+"");
		
		int successful = pre.executeUpdate();
		
		operation.release(conn, pre, res);
		
		return successful;
		
		
	}

}
