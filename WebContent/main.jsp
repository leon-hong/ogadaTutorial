<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LEON MAIN</title>
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
	 
	  <div class="container-fluid">
		<div class="navbar-header">
          <a class="navbar-brand">어서오세요.홍내영님</a>
        </div>
        
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
          
          <ul class="nav navbar-nav navbar-right">
              <li><a  href="bootStrapLogin.jsp">Logout</a></li>
          </ul>
          
        </div><!--/.nav-collapse -->
        
		 </div>
	 </div>
 </nav>
 
<div style="background-color: #eee;"> 
	<div class="container" >
		<H1> <%= request.getAttribute("today")%>에 방문하신것을 환영합니다. </H1>
		<h3> JSP가 뭐예요? </h3>
		<p>Java Server Page (JSP) is a technology for controlling the content or appearance of Web pages through the use of servlets, small programs that are specified in the Web page and run on the Web server to modify the Web page before it is sent to the user who requested it. Sun Microsystems, the developer of Java, also refers to the JSP technology as the Servlet application program interface (API). JSP is comparable to Microsoft's Active Server Page (ASP) technology. Whereas a Java Server Page calls a Java program that is executed by the Web server, an Active Server Page contains a script that is interpreted by a script interpreter (such as VBScript or JScript) before the page is sent to the user.</p>
		<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
	</div>
</div> 


<div class="container" >
		<footer>
       	<p>&copy; 2015 Company, Inc.</p>
     	</footer>
   </div> <!-- /container -->
</body>

</html>