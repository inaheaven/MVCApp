<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> �����ֹ�</h2>
	<form method="post" action="/0529MVCApp/book?cmd=CART">
		<b>��������</b>
		<select name="bookChoice">
			<option>�����/�����㺣��/15000</option>
			<option>���ݼ���/�Ŀ���ڿ���/21000</option>
			<option>ȫ�浿��/���/25000</option>
			<option>50 great short stories/Milton Crane/9800</option>
		</select>
		<b>����:</b>
		<input type="text" name="quantity" size="2" value="1"/>
		<input type="submit" value="��ٱ��Ͽ� ���"/>
	</form>
	<hr>
	<jsp:include page="cart.jsp"></jsp:include>
</body>
</html>