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
<h1>���� ���� �ֹ� ������</h1>
<b>�ֹ��� ����</b>
<table border="1">
	<tr>
		<th>���� ����</th><th>�۰�</th><th>����</th><th>����</th>
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
	<!-- parameter ���޽�  <form method="post" action="/0529MVCApp/book?cmd=DEL"> �� ����� ���Ȼ����� �� ������ ��� -->
			<input type="submit" value="����"/>
		</form>
		</td>
	</tr>
	<%}
		}catch(Exception err){}
%>
</table>
<br><br>
<b>��ü ���� �׼�: <%=session.getAttribute("sum") %></b>	<br><br>
<form>
	<input type="submit" value="����"/>
</form>
</body>
</html>