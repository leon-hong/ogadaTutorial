<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="main.Person"%>
<%@ page import="java.util.ArrayList"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
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
<!-- JSTL에서 사용할 값 설정 -->
<%
	ArrayList<Person> members = new ArrayList<Person>();
	members.add(new Person("철수", 20, "m"));
	members.add(new Person("영희", 21, "f"));
	members.add(new Person("수잔", 38, "f"));
	members.add(new Person("타잔", 60, "m"));
%>
<c:set var="members" value="<%=members%>"/>
<c:set var="sumMale" value="0"/>
<c:set var="sumFemale" value="0"/>
<c:set var="maxAge" value="0"/>
<c:set var="maxAgeName" value=""/>
<c:set var="totalAge" value="0"/>
<!-- JSTL에서 사용할 값 설정 완료 -->	

<c:url var="import_url" value="header.jsp"/>
<c:import url="${import_url}"></c:import>

<div style="background-color: #eee;"> 
	<div class="container" >
		<h3>JSTL이 뭐예요? </h3>
		<p>JSTL(JSP Standard Tag Library) : JSP에서 사용할 수 있도록 자바의 제어문을 태그로 만들어 놓은 집합 중 공통으로 제공되는 것들의 모음입니다.</p>
		<p><a class="btn btn-primary btn-lg" href="http://cafe.naver.com/ogadacoding/36" role="button">Learn more &raquo;</a></p>
	</div>
</div>

<div class="container">
      
      <div class="row">
        
        <div class="col-md-4">
          <h2>입력값</h2>
			<table class="table table-striped table-bordered">
		        <thead>
		            <tr>
		                <th>#</th>
		                <th>이름</th>
		                <th>성별</th>
		                <th>나이</th>
		            </tr>
		        </thead>
		        <tbody>
		            <c:forEach var="m" items="${members}" varStatus="status">
						<tr>
			                <td>${status.count}</td>
			                
			                <td>${m.name}</td>
							
							<c:choose>
								<c:when test="${m.gender eq 'f'}">
									<td>여성</td>
									<c:set var="sumFemale" value="${sumFemale+m.age}"/>
								</c:when>
								<c:otherwise>
									<td>남성</td>
									<c:set var="sumMale" value="${sumMale+m.age}"/>
								</c:otherwise>
							</c:choose>
			                
			                <td>${m.age}</td>
			            </tr>		         
			            
			            <c:if test="${m.age > maxAge}">
			            	<c:set var="maxAge" value="${m.age}"/>
							<c:set var="maxAgeName" value="${m.name}"/>
			            </c:if>
			            
			            <c:set var="totalAge" value="${totalAge+m.age}"/>
		            </c:forEach>
		         </tbody>
		         
		         <tfoot>
		         	<tr class="success">
		                <td colspan="3">총합</td>
		                <td>${totalAge}</td>
		            </tr>
		         <tfoot>
		    </table>
		</div>
        
        <div class="col-md-4">
          <h2>나이 많은 분</h2>
          <p>성함 : ${maxAgeName} <br/> 나이 : ${maxAge}세 </p>
        </div>        
        
        <div class="col-md-4">
          <h2>남녀 나이 합</h2>
          <p>남성 : ${sumMale}세 <br/> 여성 : ${sumFemale}세 </p>
        </div>
</div>		



<c:url var="import_url" value="footer.jsp"/>
<c:import url="${import_url}"></c:import>

</body>

</html>