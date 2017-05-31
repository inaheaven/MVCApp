package exam1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(urlPatterns="/dept")

public class FrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("servlet success");
		
		String cmd = req.getParameter("cmd");
		String url = null;
		if(cmd.equals("DEPART")){
			url ="/WEB-INF/exam1/department.html";
		}else if(cmd.equals("RESULT")){
			url="/WEB-INF/exam1/result2.jsp";
		 	String dept = req.getParameter("dept");
		 	DepartmentBean model = new DepartmentBean();
		 	String[] result = model.getAdvice(dept);
		 	req.setAttribute("result", result);
		}
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	}
}
