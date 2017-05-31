package exam3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exam3.model.Command;
import exam3.model.CompleteCommand;
import exam3.model.ConfirmCommand;
import exam3.model.MainCommand;
import exam3.model.RegFormCommand;

public class FrontController1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		String cmd = req.getParameter("cmd");
		Command command = null;
		
		if(cmd.equals("REGFORM")){
			command = new RegFormCommand();
		}else if(cmd.equals("CONFIRM")){
			command = new ConfirmCommand();
		}else if(cmd.equals("COMPLETE")){
			command = new CompleteCommand();
		}else if(cmd.equals("MAIN")){
			command = new MainCommand();
		}else{
			//정상적인 요청이 아닌 경우에 대한 처리
		}
		String url = (String)command.processCommand(req, resp);
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	}
	
}
