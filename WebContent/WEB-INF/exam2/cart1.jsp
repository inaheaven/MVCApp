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
	<b>현재 주문한 도서</b>
	<table border="1">	<!-- 부트스트랩 적용해보기 -->
	
	<tr>	<th>도서제목</th><th>작가</th><th>가격</th><th>수량</th><th>삭제</th>	</tr>
	<cart:forEach var="book" items="${sessionScope.bookList}" varStatus="loop">
	<tr>	<td>${book.title}</td><td>${book.author}</td><td>${book.price}</td><td>${book.quantity}</td>
			<td><form method="post" action="/0529MVCApp/book">
		 		<input type="hidden" name="cmd" value="DEL" />
		 		<input type="hidden" name="idx" value="${loop.index}"/>
				<!-- parameter 전달시  <form method="post" action="/0529MVCApp/book?cmd=DEL"> 위 방법이 보안상으로 더 안전한 방식 -->
				<input type="submit" value="삭제"/>
			</form></td>								</tr>
	</cart:forEach>
	
	</table>
	<br><br>
	
	<form method="post" action="/0529MVCApp/book?cmd=CHECKOUT">
	<input type="submit" value="체크아웃"/>
	</form>
</body>
</html>