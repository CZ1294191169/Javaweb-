package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.operation;

public class count {
	
	public int getcount() throws ClassNotFoundException, SQLException
	{
		Connection conn = null;
		
		PreparedStatement pre = null;
		
		ResultSet res = null;
		
		String sql = "select count(*) from student";
		
		operation db = new operation();
		
		conn = db.getCon();
		
		pre = conn.prepareStatement(sql);
		
		res = pre.executeQuery();
		
		res.next();
		
		int num = res.getInt(1);
		
		operation.release(conn, pre, res);
		
		System.out.println("num = "+num);
		
		return num;
	}

}
