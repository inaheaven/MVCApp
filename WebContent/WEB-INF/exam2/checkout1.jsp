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
<h1>도서 구매 주문 페이지</h1>
<b>주문한 도서</b>
<table border="1">
	<tr>	<th>도서 제목</th><th>작가</th><th>가격</th><th>수량</th>	</tr>
	<checkout:forEach var="book" items="${sessionScope.bookList}">
	<tr>	<td>${book.title}</td><td>${book.author}</td><td>${book.price}</td><td>${book.quantity}</td>
			<td><form method="post" action="/0529MVCApp/book">
		 		<input type="hidden" name="cmd" value="DEL" />
		 		<checkout:forEach begin="0" end="${bookList.size()-1}" step="1" var="i">
		 			<input type="hidden" name="idx" value="${i}"/>
		 		</checkout:forEach>
				<!-- parameter 전달시  <form method="post" action="/0529MVCApp/book?cmd=DEL"> 위 방법이 보안상으로 더 안전한 방식 -->
				<input type="submit" value="삭제"/>
			</form></td>					</tr>
	</checkout:forEach>
</table>
<br><br>
<b>전체 구입 액수: ${sessionScope.sum}</b>	<br><br>
<form>
	<input type="submit" value="결제"/>
</form>
</body>
</html>