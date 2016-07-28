<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		boolean isSameString( String str1, String str2 ){
			return str1.equals(str2);
		}
	%>
	
	<%
		String USER_ID = "abcd";
		String USER_PW = "1234";
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean isSuccess = false;
		if( isSameString(USER_ID, id) && isSameString(USER_PW, pw)){
			isSuccess = true;
		}
		
		String resStr = "로그인에 실패하셧습니다. 다시 입력해 주세요.";
		String resBool = "X";
		if( isSuccess ){
		 	resStr = "로그인 성공하셧습니다.";
		 	resBool = "O";
		}
	%>
	
	<H3>안녕하세요 사용자님</H3>
	<H2>
	 <%= resStr %>
	</H2>
	
	
	
	
</body>
</html>