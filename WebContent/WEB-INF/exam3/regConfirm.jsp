<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입확인</h1>
<form method="post" action="/0529MVCApp/register">
	<input type="hidden" name="cmd" value="COMPLETE"/> 
	당신이 입력한 내용은 다음과 같습니다.<br>
	<ul>
		<li>아이디:${param.id}</li>	
		<li>패스워드:${param.pw}</li>	
		<li>주소:${param.addr}</li>	
	</ul>
	<input type="submit" value="가입완료"/>
</form>
</body>
</html>