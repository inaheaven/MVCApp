package exam2.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartCommand implements Command{

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resq)
			throws ServletException, IOException {
		return "/WEB-INF/exam2/bookShop.jsp";
	}
	
}
