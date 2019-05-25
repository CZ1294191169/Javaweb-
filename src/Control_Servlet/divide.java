package Control_Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import entities.PageVO;
import entities.student;
import entities.user;
import service.stu_service;

/**
 * Servlet implementation class divide
 */
@WebServlet("/divide")
public class divide extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public divide() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		student s = new student();
		stu_service service = new stu_service();
		List<student> list = new ArrayList();
		
		int recordOfPage = 5;
		int page = 1;
		if (request.getParameter("page") != null) {
			try {
				page = Integer.parseInt(request.getParameter("page"));
			} catch (Exception e) {
				e.printStackTrace();
				page = 1;
			}
		}
		PageVO<student> pageVO = new PageVO<student>();
		try {
			pageVO = service.search(page, recordOfPage);
			List<student> studentlist = new ArrayList<student>();
			studentlist = pageVO.getList();
			
			for(int i=0;i<studentlist.size();i++)
			{
				student st = new student();
				st =  studentlist.get(i);
				
				System.out.println(st.getStuno()+" "+st.getStuname());
			}
			request.setAttribute("pageVO", pageVO);
			request.setAttribute("studentlist", studentlist);
			
		
			
				
			RequestDispatcher rd = request.getRequestDispatcher("input/pageshow.jsp");
			rd.forward(request, response);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
