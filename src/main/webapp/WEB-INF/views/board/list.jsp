<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>全ての投稿</title>
  <!-- <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> -->
<link rel="stylesheet" href="/css/content.css">  
  
</head>
<body>
<%@ include file="../header.jsp"%>
<div class=container">
<h2 style="text-align:center; margin-top: 6%;">全ての投稿</h2>
<div style="text-align: center; 
            margin-left: 13.5%;
            color: darkgray;">**件</div>
<nav>
<a href="write_view" id="button" type="button" class="btn btn-primary"
style="margin-left: 5.5%;">投稿</a> <br>
	
<div class = "sign">
<%-- <sec:authorize access="isAnonymous()"> --%>
	<a href="#희복오빠가 만든거 연동" style="margin-left: 5.5%;">Sign in</a><br>
	<a href="#희복오빠가 만든거 연동" style="margin-left: 5.5%;">Sign up</a><br>
<%-- </sec:authorize> --%>

<%-- <sec:authorize access="isAuthenticated()"> --%>
	<a href="#희복오빠가 만든거 연동" style="margin-left: 5.5%;">Logout</a><br>
<%-- </sec:authorize> --%>
</div>
</nav>
</div>
<div class=container>     
	 <table class="table" > 
	
		<tr>
			<td>No</td>
			<td>タイトル</td>
			<td>作成者</td>
			<td>作成日</td>
			<td>アクセス数</td>
		</tr>

	<table class="table table-hover"> 
    	<c:forEach var="board" items="${boards}">

			<tr>
				<td>${board.b_no}</td>
					
				<td><a href="${pageContext.request.contextPath}/jboard/content_view?b_no=${board.b_no}">
						${board.b_title} </a></td>
				<td>${board.u_nickname}</td>
				<td>${board.b_time}</td>
				<td>${board.b_hit}</td>
			</tr>
		</c:forEach>
		
	</table>
	</div>
<%@ include file="../footer.jsp"%>
</body>
</html>
				
		