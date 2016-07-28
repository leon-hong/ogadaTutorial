<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
/* NAV BAR헤더만큼 강제로 띄움. 점보트론 사용 방식 */
body {
  padding-top: 50px;
  padding-bottom: 20px;
}
</style>
</head>

<body>

 <nav class="navbar navbar-inverse navbar-fixed-top">
	 <div class="container">
	 
		<div class="navbar-header">
          <a class="navbar-brand" href="#">Leon's Home</a>
        </div>
        
		 <div id="navbar" class="navbar-collapse collapse">
		 <form class="navbar-form navbar-right" method = "POST" action="login.do">
		 	<div class="form-group">
		 		<input type="text" placeholder="abcd" class="form-control" name="id"></input>
		 	</div>
		
		 	<div class="form-group">
		 		<input type="password" placeholder="1234" class="form-control" name="pw"></input>
		 	</div>
		 	
		 	<button type="submit" class="btn btn-success" > 로그인 </button>
		 </form>
		 </div>
	 </div>
 </nav>
 
<%
	String isLogin = (String)request.getAttribute("isLogin");
	if( (isLogin != null) && isLogin.equals("N") ){ %> 
		<div class="alert alert-danger">
		    <a href="#" class="close" data-dismiss="alert">×</a>
		    <strong>Error!</strong> 아이디와 비밀번호가 틀렸습니다. 다시 시도해 주세요.
		</div>
<%}%>
 
<div style="background-color: #eee;">  
	<div class="container">
		<H1> 로그인 부탁드려요. </H1>
		<h2> 그런데 대체 JSP가 뭐예요? </h2>
	</div>
</div> 
</body>

</html>