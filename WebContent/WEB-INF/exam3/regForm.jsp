<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
function fn_zip_Search(){
	window.open("/0529MVCApp/zipcode/zipAddress.jsp", "", "width=300, height=400, top=300, left=400");
}
</script>
</head>
<body>
<h2>ȸ�����Ծ��</h2>
<form method="post" action="/0529MVCApp/register" name="form1">
	<input type="hidden" name="cmd" value="CONFIRM"/>
	���̵�: <input type="text" name="id"/><br>
	��й�ȣ:<input type="password" name="pw"/><br>
	�����ȣ:<input type="text" name="zip1" size="3" readonly="readonly"/>-<input type="text" size="3" name="zip2" readonly="readonly"/>
	<input type="button" value="�����ȣ ã��" onclick="fn_zip_Search()"/><br> 
	�ּ�:<input type="text" name="addr" size="60"/><br>
<input type="submit" value="Ȯ��"/><br>
</form>
</body>
</html>