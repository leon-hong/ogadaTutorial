<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MVC View 페이지</title>
</head>
<body>
	
	<H2>모델2 방식 로그인 결과</H2>
	<H3>안녕하세요 <%= request.getAttribute("resStr") %></H3>
	로그인 시도 시간은 <%= request.getAttribute("today") %> 입니다	
	
</body>
</html>