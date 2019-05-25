package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.operation;
import entities.student;

public class all {
	
	Connection conn = null;
	
	PreparedStatement pre = null;
	
	ResultSet res = null;
	
	public List<student> selectall() throws ClassNotFoundException, SQLException
	{
		List<student> list = new ArrayList<student>();
		
		String sql = "select * from student order by stuno desc";
		
		operation db = new operation();
		
		conn = db.getCon();
		
		pre = conn.prepareStatement(sql);
		
		res = pre.executeQuery();
		
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
