package add2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class StudentInsert extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String strusername=request.getParameter("username");//name strCourseName
		String strsid=request.getParameter("sid");//section //strSection
		
		
		
		if(StudentDao.save(strusername, strsid)){//same
			RequestDispatcher rd=request.getRequestDispatcher("saved1");
			rd.forward(request,response);
		}
		else{
			out.print("Error occured while saving data.");
			RequestDispatcher rd=request.getRequestDispatcher("add2.jsp");
			rd.include(request,response);
		}
		
		out.close();
	}

}
