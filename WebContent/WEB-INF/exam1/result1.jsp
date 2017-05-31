<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- Model1방식 -->
<h2>당신이 선택한 학과에 대한 정보입니다.</h2>
<ol>

<%
	request.setCharacterEncoding("euc-kr");
	String dept = request.getParameter("dept");
	String result = null;
	if(dept.equals("kor")){
%>
	<li>국어를 잘해야한다.</li>
	<li>국어를 사랑해야한다.</li>
<%
	}else if(dept.equals("eng")){
%>		
	<li>영어를 잘해야한다.</li>
	<li>영어를 사랑해야한다.</li>
<%
	}else if(dept.equals("com")){
%>	
	<li>컴퓨터를 잘해야한다.</li>
	<li>컴퓨터를 사랑해야한다.</li>
<%
	}
%>
</ol>
</body>
</html>