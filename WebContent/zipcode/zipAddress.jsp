<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
	function fn_Address(si, gu, dong){
		var addr = si +" " + gu + " " + dong;
		opener.document.form1.addr.value = addr;									
		self.close();
	}
</script>
<body>
	<h2>우편번호 찾기</h2>
	<form method="post" action="">
		<input type="hidden" name="cmd" value="ZIPSEARCH"/>
		<table>
			<tr>
				<td>
					동이름입력: <input type="text" name="dong"/>&nbsp;&nbsp;
					<input type="submit" value="검색"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>