<%@page import="exam2.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="cart" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>���� �ֹ��� ����</b>
<table border="1">	<!-- ��Ʈ��Ʈ�� �����غ��� -->

<% request.setCharacterEncoding("euc-kr"); %>
	<tr>
		<th>��������</th><th>�۰�</th><th>����</th><th>����</th>
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
<form method="post" action="/0529MVCApp/book?cmd=CHECKOUT">
	<input type="submit" value="üũ�ƿ�"/>
</form>
</body>
</html>