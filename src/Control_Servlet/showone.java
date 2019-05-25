package Control_Servlet;

import java.util.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.student;
import service.stu_service;

/**
 * Servlet implementation class showone
 */
@WebServlet("/showone")
public class showone extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showone() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		stu_service service = new stu_service();
		
		List<student> list =  new ArrayList<student>();
		
		try {
			list = service.all();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			
		}
		
		student s = new student();
		for(int i=0;i<list.size();i++)
		{
			s = list.get(i);
			System.out.print(s.getStuno()+" ");
			System.out.print(s.getStuname()+" ");
			System.out.print(s.getStusex()+" ");
			System.out.print(s.getStuage()+" ");
			System.out.println(s.getStuclass()+" ");
		}
		
		//request.setAttribute("student", list);
		//RequestDispatcher rd = request.getRequestDispatcher("input/test.jsp");
	//	rd.forward(request, response);
		
		
		
		response.sendRedirect("divide");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
