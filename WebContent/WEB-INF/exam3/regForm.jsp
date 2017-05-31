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
<h2>회원가입양식</h2>
<form method="post" action="/0529MVCApp/register" name="form1">
	<input type="hidden" name="cmd" value="CONFIRM"/>
	아이디: <input type="text" name="id"/><br>
	비밀번호:<input type="password" name="pw"/><br>
	우편번호:<input type="text" name="zip1" size="3" readonly="readonly"/>-<input type="text" size="3" name="zip2" readonly="readonly"/>
	<input type="button" value="우편번호 찾기" onclick="fn_zip_Search()"/><br> 
	주소:<input type="text" name="addr" size="60"/><br>
<input type="submit" value="확인"/><br>
</form>
</body>
</html>