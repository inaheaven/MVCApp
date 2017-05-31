<%@page import="exam2.BookDTO"%>
<%@taglib prefix="checkout" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="checkoutFmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<checkoutFmt:requestEncoding value="euc-kr"/>
<h1>���� ���� �ֹ� ������</h1>
<b>�ֹ��� ����</b>
<table border="1">
	<tr>	<th>���� ����</th><th>�۰�</th><th>����</th><th>����</th>	</tr>
	<checkout:forEach var="book" items="${sessionScope.bookList}">
	<tr>	<td>${book.title}</td><td>${book.author}</td><td>${book.price}</td><td>${book.quantity}</td>
			<td><form method="post" action="/0529MVCApp/book">
		 		<input type="hidden" name="cmd" value="DEL" />
		 		<checkout:forEach begin="0" end="${bookList.size()-1}" step="1" var="i">
		 			<input type="hidden" name="idx" value="${i}"/>
		 		</checkout:forEach>
				<!-- parameter ���޽�  <form method="post" action="/0529MVCApp/book?cmd=DEL"> �� ����� ���Ȼ����� �� ������ ��� -->
				<input type="submit" value="����"/>
			</form></td>					</tr>
	</checkout:forEach>
</table>
<br><br>
<b>��ü ���� �׼�: ${sessionScope.sum}</b>	<br><br>
<form>
	<input type="submit" value="����"/>
</form>
</body>
</html>