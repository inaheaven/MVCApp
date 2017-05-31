package exam2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.StringTokenizer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("euc-kr");
		String url="";
		String cmd = req.getParameter("cmd");
		HttpSession session = req.getSession();
		//세션시작시 bookList가 새롭게 생기기때문에 반복 실행할때 계속 반복해서 새로 생성되는 문제점을 해결하기 위해 session.으로부터 bookList를 불러온다 
		ArrayList bookList = (ArrayList)session.getAttribute("bookList");
		
		if(cmd.equals("ORDER")){
			url= "/WEB-INF/exam2/bookShop.jsp";
		}else if(cmd.equals("CART")){
			url= "/WEB-INF/exam2/bookShop.jsp";
			
			if(bookList == null){
				bookList = new ArrayList();
			}
			bookList.add(getBook(req));
		}else if(cmd.equals("DEL")){
			url="/WEB-INF/exam2/bookShop.jsp";
			int idx = Integer.parseInt(req.getParameter("idx"));
			bookList.remove(idx);
		}else if(cmd.equals("CHECKOUT")){
			url= "/WEB-INF/exam2/checkout.jsp";
			int sum = 0;
			for(int i=0; i<bookList.size(); i++){
				BookDTO dto = (BookDTO)bookList.get(i);
				sum+=dto.getPrice() * dto.getQuantity();
			}
			session.setAttribute("sum", sum);
		}else if(cmd.equals("MAIN")){
			url="/index.html";
		}
		
		session.setAttribute("bookList", bookList);
		RequestDispatcher view =  req.getRequestDispatcher(url);
		view.forward(req, resp);
	}

	public BookDTO getBook(HttpServletRequest req){
		String bookChoice = req.getParameter("bookChoice");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		StringTokenizer st = new StringTokenizer(bookChoice, "/");
		
			String title = st.nextToken();
			String author = st.nextToken();
			String price = st.nextToken();
		
			//DTO패턴으로 하나의 묶음을 설정
			BookDTO dto = new BookDTO();
			dto.setAuthor(author.trim());
			dto.setPrice(Integer.parseInt(price.trim()));
			dto.setQuantity(quantity);
			dto.setTitle(title.trim());
			
			return dto;
	}
}
