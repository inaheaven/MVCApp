<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ������Ȯ��</h1>
<form method="post" action="/0529MVCApp/register">
	<input type="hidden" name="cmd" value="COMPLETE"/> 
	����� �Է��� ������ ������ �����ϴ�.<br>
	<ul>
		<li>���̵�:${param.id}</li>	
		<li>�н�����:${param.pw}</li>	
		<li>�ּ�:${param.addr}</li>	
	</ul>
	<input type="submit" value="���ԿϷ�"/>
</form>
</body>
</html>