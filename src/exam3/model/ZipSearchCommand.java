package exam3.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZipSearchCommand implements Command{

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//DB 연동하여 tbl 테이블로 부터 동이름 검색하여 결과값을 리턴할수 있도록 한다 (request에 담아서)
		return "/zipcode/zipAddress.jsp";
	}
	
}
