package exam3.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ZipSearchCommand implements Command{

	@Override
	public Object processCommand(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//DB �����Ͽ� tbl ���̺�� ���� ���̸� �˻��Ͽ� ������� �����Ҽ� �ֵ��� �Ѵ� (request�� ��Ƽ�)
		return "/zipcode/zipAddress.jsp";
	}
	
}
