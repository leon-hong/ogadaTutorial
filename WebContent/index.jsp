<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�α��� ó��</title>

<script>
</script>

</head>
<body>

	<H1>��1 ��� ó��</H1>
	<H3>ID�� PW�� �Է��� �ּ���.</H3>
	<form method = "POST" action="login.jsp">
		ID : <input type="text" name="id">
		<br/>
		PW : <input type="password" name="pw">
		<br/>
		<input type = "submit" value="�α���">
	</form>

	<H1>��2 ��� ó��</H1>
	<form method = "POST" action="login.do">
		ID : <input type="text" name="id">
		<br/>
		PW : <input type="password" name="pw">
		<br/>
		<input type = "submit" value="�α���">
	</form>

</body>
</html>