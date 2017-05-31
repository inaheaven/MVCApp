package exam3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam3.model.Command;
import exam3.model.CommandFactory;
import exam3.model.CompleteCommand;
import exam3.model.ConfirmCommand;
import exam3.model.MainCommand;
import exam3.model.RegFormCommand;

public class FrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		String cmd = req.getParameter("cmd");
		String url;
		CommandFactory factory = CommandFactory.newInstance();
		Command command = factory.createCommand(cmd);
		String state = (String)req.getSession().getAttribute("STATE");

		if(state!= null && state.equals("COMPLETE")){
			url ="/WEB-INF/exam3/alreadyRegister.jsp";
		}else{
			url = (String)command.processCommand(req, resp);
		}
		
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	}
	
}
