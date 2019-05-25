package Control_Servlet;

import java.util.List;
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
import entities.PageVO;
import service.stu_service;

/**
 * Servlet implementation class search
 */
@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public search() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int choose = Integer.parseInt(request.getParameter("choose"));
		int id=0;
		if(request.getParameter("id")!=null)
		{
			id = Integer.parseInt(request.getParameter("id"));
			
			System.out.println("search id = "+id);
		}
		student s = new student();
		stu_service service = new stu_service();
		List<student> list = new ArrayList();
		switch(choose)
		{
			case 1:
				s.setStuno(request.getParameter("stuno"));
			try {
				list = service.search(1, s);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
				break;
			case 2:
				s.setStuname(request.getParameter("stuname"));
				try {
					list = service.search(2, s);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				break;
			case 3:
				s.setStuno(request.getParameter("stuno"));
				try {
					list = service.search(3, s);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				break;
			case 4:
				s.setStuname(request.getParameter("stuname"));
				try {
					list = service.search(4, s);
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				break;
		}
		
		System.out.println("here!");
		request.setAttribute("list", list);
		System.out.println("here!2");
		if(id==0)
		{
			System.out.println("search id = "+id);
		RequestDispatcher rd = request.getRequestDispatcher("input/result.jsp?id=0");
		rd.forward(request, response);
		}
		else
		{
			System.out.println("search id = "+id);
			RequestDispatcher rd = request.getRequestDispatcher("input/result.jsp?id=1");
			rd.forward(request, response);
		}
		System.out.println("here!3");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
