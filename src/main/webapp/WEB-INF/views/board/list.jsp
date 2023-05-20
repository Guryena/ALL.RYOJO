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
<div class="container col-md">
<span><h2 id = "title" >全ての投稿</h2></span>	
<div id ="count">${pageMaker.total}件</div>
<nav id = "nav">

<a href="write_view" id="b" type="button" class="btn btn-primary">投稿</a>
<div class = "sign">
<%-- <sec:authorize access="isAnonymous()"> --%>
	<a href="#희복오빠가 만든거 연동">Sign in</a><br>
	<a href="#희복오빠가 만든거 연동">Sign up</a><br>
<%-- </sec:authorize> --%>

<%-- <sec:authorize access="isAuthenticated()"> --%>
	<a href="#희복오빠가 만든거 연동" >Logout</a><br>
<%-- </sec:authorize> --%>
</div>
</nav>
</div>
<div class="container">     
	 <table class="table"> 
	
		<tr>
			<td id ="order">No</td>
			<td id ="order1">タイトル</td>
			<td id ="order2">作成者</td>
			<td id ="order3">作成日</td>
			<td id ="order4">アクセス数</td>
		</tr>

	<table class="table table-hover"> 
    	<c:forEach var="board" items="${boards}">

			<tr>
				<td style="width : 5.4%;">${board.b_no}</td>
					
				<td style="width : 10.4%; padding-left:5.7%;"><a href="${pageContext.request.contextPath}/jboard/content_view?b_no=${board.b_no}">
						${board.b_title} </a></td>
				<td style="width : 10.4%; padding-left:7.62%;">${board.u_nickname}</td>
				<td style="width : 30.4%; padding-left:14.5%;">${board.b_time}</td>
				<td style="width : 10.4%; padding-left:1.38%;">${board.b_hit}</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<!-- 페이징 -->
	<div class = "container" id = "paging">
	    <c:if test="${pageMaker.prev}">
         <a href="list${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a> &nbsp;&nbsp; 
      </c:if>

      <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage}" var="idx">&nbsp;&nbsp; 
         <c:out value="${pageMaker.cri.pageNum == idx?'':''}" />  
         <a href="list${pageMaker.makeQuery(idx)}">${idx}</a>&nbsp;
      </c:forEach>
      
      <c:if test="${pageMaker.next && pageMaker.endPage > 0}"> &nbsp;
         <a href="list${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a> &nbsp;&nbsp; 
      </c:if> 
	
	
	
	</div>
<%@ include file="../footer.jsp"%>
</body>
</html>
				
		