<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> 도서주문</h2>
	<form method="post" action="/0529MVCApp/book?cmd=CART">
		<b>도서선택</b>
		<select name="bookChoice">
			<option>어린왕자/생떽쥐베리/15000</option>
			<option>연금술사/파울로코엘료/21000</option>
			<option>홍길동전/허균/25000</option>
			<option>50 great short stories/Milton Crane/9800</option>
		</select>
		<b>수량:</b>
		<input type="text" name="quantity" size="2" value="1"/>
		<input type="submit" value="장바구니에 담기"/>
	</form>
	<hr>
	<jsp:include page="cart.jsp"></jsp:include>
</body>
</html>