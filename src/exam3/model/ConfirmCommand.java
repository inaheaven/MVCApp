package exam3.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConfirmCommand implements Command {

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//regConfirm.jsp로 이동할때 처리할 내용
		//입력값 확인
		//아이디 중복과 같은예외처리
		return "/WEB-INF/exam3/regConfirm.jsp";
	}
	
}
