<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>가입완료</h1>
가입축하<br>
<%
	session.setAttribute("STATE", "COMPLETE");
%>

<a href="/0529MVCApp/register?cmd=MAIN">메인페이지로</a>

</body>
</html>