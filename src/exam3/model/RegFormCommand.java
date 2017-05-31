package exam3.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegFormCommand implements Command{

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)	throws ServletException, IOException {
		// regForm.html로 이동할때 처리할 내용
		return "/WEB-INF/exam3/regForm.jsp";
		
	}
	
}
