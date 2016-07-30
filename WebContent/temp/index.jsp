<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 처리</title>

<script>
</script>

</head>
<body>

	<H1>모델1 방식 처리</H1>
	<H3>ID와 PW를 입력해 주세요.</H3>
	<form method = "POST" action="login.jsp">
		ID : <input type="text" name="id">
		<br/>
		PW : <input type="password" name="pw">
		<br/>
		<input type = "submit" value="로그인">
	</form>

	<H1>모델2 방식 처리</H1>
	<form method = "POST" action="login.do">
		ID : <input type="text" name="id">
		<br/>
		PW : <input type="password" name="pw">
		<br/>
		<input type = "submit" value="로그인">
	</form>

</body>
</html>