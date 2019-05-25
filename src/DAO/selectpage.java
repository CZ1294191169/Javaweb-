package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.SqlUtil;
import DB.operation;
import entities.student;

public class selectpage {
	
	static final String driver="com.mysql.jdbc.Driver";
	static final String url="jdbc:mysql://localhost:3306/easybuy?useSSL=false";
	static final String user="root";
	static final String password="123456";
	
	Connection conn=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
public List<student> selectPage(int page,int recordOfPage) throws SQLException, ClassNotFoundException{
		
		List<student> studentlist = new ArrayList<student>();
		
		operation db = new operation();
		
		String sql="select * from student "
				+ " order by stuno desc " 
				+ SqlUtil.getPageSql(page, recordOfPage);
		
		System.out.println(sql);
		//System.out.println(sql);
		try {
			conn = db.getCon();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				student s = new student();
				s.setStuno(rs.getString("stuno"));
				s.setStuname(rs.getString("stuname"));
				s.setStuage(rs.getInt("stuage"));
				s.setStusex(rs.getString("stusex"));
				s.setStuclass(rs.getInt("stuclass"));
				
				studentlist.add(s);
			}
			return studentlist;				
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			operation.release(conn, ps, rs);
		}
	}

}
