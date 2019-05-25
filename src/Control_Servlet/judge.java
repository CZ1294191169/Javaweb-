package Control_Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.user;

/**
 * Servlet implementation class judge
 */
@WebServlet("/judge")
public class judge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public judge() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String str = request.getParameter("id");
		
		int id = Integer.parseInt(str);
		
		if(id==1)
		{
		
		user u = new user();
		
		u.setUsername(request.getParameter("userid"));
		u.setPassword(request.getParameter("psd"));
		
		if(u.getUsername().trim().equals("root")&&u.getPassword().trim().equals("12345"))
		{
			
			response.sendRedirect("showone?id=1");
		}
		else
		{
			response.sendRedirect("input/index.jsp");
		}
		}
		else if(id==2)
		{
			System.out.println("i'm here");
			response.sendRedirect("yk?id=2");
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
