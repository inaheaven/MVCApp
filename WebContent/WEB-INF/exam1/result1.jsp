<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- Model1��� -->
<h2>����� ������ �а��� ���� �����Դϴ�.</h2>
<ol>

<%
	request.setCharacterEncoding("euc-kr");
	String dept = request.getParameter("dept");
	String result = null;
	if(dept.equals("kor")){
%>
	<li>��� ���ؾ��Ѵ�.</li>
	<li>��� ����ؾ��Ѵ�.</li>
<%
	}else if(dept.equals("eng")){
%>		
	<li>��� ���ؾ��Ѵ�.</li>
	<li>��� ����ؾ��Ѵ�.</li>
<%
	}else if(dept.equals("com")){
%>	
	<li>��ǻ�͸� ���ؾ��Ѵ�.</li>
	<li>��ǻ�͸� ����ؾ��Ѵ�.</li>
<%
	}
%>
</ol>
</body>
</html>