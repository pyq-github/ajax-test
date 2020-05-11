package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JavaBean.Student;
import net.sf.json.JSONObject;


/**
 * Servlet implementation class jsonServlet
 */
public class jsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject json = new JSONObject();
		Student stu = new Student();
		Student stu1 = new Student();
		stu.setSno("3162052051526");
		stu.setName("≈À”–∆Ê");
		stu.setAge(22);
		stu1.setSno("3162052");
		stu1.setName("∆Ê");
		stu1.setAge(2);
		json.put("stu", stu);
		json.put("stu1", stu1);
		out.print(json);
		out.close();
		
		System.out.println(request.getParameter("name")+request.getParameter("age"));
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
