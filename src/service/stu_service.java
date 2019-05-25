package service;

import java.sql.SQLException;
import java.util.List;

import DAO.*;
import entities.student;
import entities.PageVO;

public class stu_service {

	
	  public void insertinto(student stu) throws ClassNotFoundException, SQLException
	  {
		  stu_insert i = new stu_insert(stu);
		  
		  i.insert();
	  }
	  
	  public void deletefrom(student stu) throws ClassNotFoundException, SQLException
	  {
		  stu_delete d = new stu_delete(stu);
		  
		  d.delete();
	  }
	  
	  public void changeto(student stu) throws ClassNotFoundException, SQLException
	  {
		  stu_change c = new stu_change(stu);
		  c.change();
	  }
	  
	  public List<student> search(int way,student stu) throws ClassNotFoundException, SQLException
	  {
		  stu_search s = new stu_search();
		  
		  return s.search(way, stu);
	  }
	  
	  public List<student> all() throws ClassNotFoundException, SQLException
	  {
		  all a = new all();
		  
		  return a.selectall();
	  }
	  
	  public PageVO<student> search(int page,int recordOfPage) throws ClassNotFoundException, SQLException{
		  
		  count c = new count();
		  selectpage sp = new selectpage();
		  stu_search stu = new stu_search();
			
			PageVO<student> pageVO = new PageVO<student>();
			int recordCount = c.getcount();
			int pageCount = (recordCount-1) / recordOfPage + 1;
			if(page < 1) { page = 1; }
			if(page > pageCount ) {page = pageCount;}

			List<student> userList = sp.selectPage(page, recordOfPage);
			
			System.out.println("userlist = "+userList.size());

			pageVO.setRecordOfPage(recordOfPage);
			pageVO.setRecordCount(recordCount);
			pageVO.setPageCount(pageCount);
			pageVO.setPage(page);
			pageVO.setList(userList);
			return pageVO;
		}

}
