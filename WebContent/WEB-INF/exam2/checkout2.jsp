<%@page import="exam2.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>도서 구매 주문 페이지</h1>
<b>주문한 도서</b>
<table border="1">
	<tr>
		<th>도서 제목</th><th>작가</th><th>가격</th><th>수량</th>
	</tr>
	<% 
		try{
		ArrayList bookList = (ArrayList)session.getAttribute("bookList"); 
		for(int i=0; i<bookList.size();i++){
			BookDTO dto = (BookDTO)bookList.get(i);
	%>
	<tr>
		<td><%=dto.getTitle() %></td>
		<td><%=dto.getAuthor() %></td>
		<td><%=dto.getPrice() %></td>
		<td><%=dto.getQuantity() %></td>
		<td>
		<form method="post" action="/0529MVCApp/book">
		 	<input type="hidden" name="cmd" value="DEL" />
		 	<input type="hidden" name="idx" value="<%=i%>"/>
	<!-- parameter 전달시  <form method="post" action="/0529MVCApp/book?cmd=DEL"> 위 방법이 보안상으로 더 안전한 방식 -->
			<input type="submit" value="삭제"/>
		</form>
		</td>
	</tr>
	<%}
		}catch(Exception err){}
%>
</table>
<br><br>
<b>전체 구입 액수: <%=session.getAttribute("sum") %></b>	<br><br>
<form>
	<input type="submit" value="결제"/>
</form>
</body>
</html>