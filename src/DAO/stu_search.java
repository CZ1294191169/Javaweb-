package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.operation;
import entities.student;



public class stu_search {
	
	student s =null;
	
	Connection conn = null;
	
	PreparedStatement pre = null;
	
	ResultSet res = null;
	
	
	public List<student> search(int way,student stu) throws ClassNotFoundException, SQLException
	{
		
		List<student> list = new ArrayList<student>();
		
		String sql;
		
		operation db = new operation();
		
		conn = db.getCon();
		
		switch (way)
		{
		
			case 1:   //search by stuno
				sql = "select * from student where stuno = ?";
				
				pre = conn.prepareStatement(sql);
				
				pre.setString(1, stu.getStuno());
				
				res = pre.executeQuery();
				
				break;
				
			case 2://search by name
				
				sql = "select * from student where stuname = ?";
				
				pre = conn.prepareStatement(sql);
				
				pre.setString(1, stu.getStuname());
				
				res = pre.executeQuery();
				
				break;
				
			case 3://search by stuno 模糊
				
				sql = "select * from student where stuno Like ?";
				
				pre = conn.prepareStatement(sql);
				
				pre.setString(1, "%"+stu.getStuno()+"%");
				
				res = pre.executeQuery();
				
				break;
				
			case 4://search by stuname 模糊
				
				sql = "select * from student where stuname Like ?";
				
				pre = conn.prepareStatement(sql);
				
				pre.setString(1, "%"+stu.getStuname()+"%");
				
				res = pre.executeQuery();
				
				break;
		
		}
		
		while (res.next()) {
			student s = new student();
			s.setStuno(res.getString("stuno"));
			s.setStuname(res.getString("stuname"));
			s.setStuage(res.getInt("stuage"));
			s.setStusex(res.getString("stusex"));
			s.setStuclass(res.getInt("stuclass"));
			list.add(s);
		}
		
		
		operation.release(conn, pre, res);
		
		return list;
		
	}

}
