<%@page import="exam2.BookDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="cart" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cartFmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<cartFmt:requestEncoding value="euc-kr"/>
	<b>���� �ֹ��� ����</b>
	<table border="1">	<!-- ��Ʈ��Ʈ�� �����غ��� -->
	
	<tr>	<th>��������</th><th>�۰�</th><th>����</th><th>����</th><th>����</th>	</tr>
	<cart:forEach var="book" items="${sessionScope.bookList}" varStatus="loop">
	<tr>	<td>${book.title}</td><td>${book.author}</td><td>${book.price}</td><td>${book.quantity}</td>
			<td><form method="post" action="/0529MVCApp/book">
		 		<input type="hidden" name="cmd" value="DEL" />
		 		<input type="hidden" name="idx" value="${loop.index}"/>
				<!-- parameter ���޽�  <form method="post" action="/0529MVCApp/book?cmd=DEL"> �� ����� ���Ȼ����� �� ������ ��� -->
				<input type="submit" value="����"/>
			</form></td>								</tr>
	</cart:forEach>
	
	</table>
	<br><br>
	
	<form method="post" action="/0529MVCApp/book?cmd=CHECKOUT">
	<input type="submit" value="üũ�ƿ�"/>
	</form>
</body>
</html>