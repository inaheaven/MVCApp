package exam3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController0 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		String url="";
		String cmd = req.getParameter("cmd");
		
		if(cmd.equals("REGFORM")){
			url="/WEB-INF/exam3/regForm.jsp";
		}else if(cmd.equals("CONFIRM")){
			url="/WEB-INF/exam3/regConfirm.jsp";
			//���̵� �ߺ�
			//�Է°� Ȯ��
		}else if(cmd.equals("COMPLETE")){
			url="/WEB-INF/exam3/regComplete.jsp";
			//DB���� �� ����
		}else if(cmd.equals("MAIN")){
			url="/index.html";
		}else{
			//�������� ��û�� �ƴ� ��쿡 ���� ó��
		}
		RequestDispatcher view = req.getRequestDispatcher(url);
		view.forward(req, resp);
	}
	
}
