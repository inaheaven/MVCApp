package exam3.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CompleteCommand implements Command{

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)	throws ServletException, IOException {
		//DB���� �� ����
		return "/WEB-INF/exam3/regComplete.jsp";
	}
	
}
