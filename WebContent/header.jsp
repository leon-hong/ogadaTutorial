<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>

$(document).ready(function(){
	$("#navMenu li").click(function(){
	    $("#navMenu li").removeClass("active");
	    $(this).addClass("active");
	});	
});

</script>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">

		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="main.jsp">Leon's Home</a>
			</div>

			<div id="navbar" class="collapse navbar-collapse">
				<ul id = "navMenu" class="nav navbar-nav">
					<li class="active"><a href="main.jsp">Main</a></li>
					<li><a href="jstl.jsp#JSTL">JSTL</a></li>
					<li><a href="#Session">Session</a></li>
					<li><a href="#DB">DB</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Logout</a></li>
					<li><a href="http://www.enjoyhongcha.com">홍내영님</a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->

		</div>
	</div>
</nav>