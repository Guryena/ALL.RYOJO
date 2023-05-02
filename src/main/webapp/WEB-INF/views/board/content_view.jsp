<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id = "list-table" width="500" cellpadding="0" cellspacing="0" border="1">
     <form action = "modify" method = "post">
<!-- input타입, 체크박스 등 (얘네들만 넘어감) 넘어갈 때 name, value 값이 넘어가고 없는 애들은 안넘어감 -->
 <input type ="hidden" name ="bid" value="${content_view.bid}">
 <tr>
 <td>번호</td>
 <td>${content_view.bid}</td> <!-- 전송버튼 누를 때 안넘어감 -->
 </tr>
 
 <tr>
 <td>히트</td>
 <td>${content_view.bhit}</td>
 </tr>
 
 <tr>
 <td>이름</td>
 <td><input type="text" name="bname" value="${content_view.bname}"></td>
</tr>

 <tr>
 <td>제목</td>
 <td><input type="text" name="btitle" value="${content_view.btitle}"></td>
</tr>

<tr>
<td>내용</td>
<td><textarea rows="10" name="bcontent"> ${content_view.bcontent}</textarea></td>
</tr>

<tr>
<td colspan="2"> <input type="submit" value="수정"> &nbsp;&nbsp; <a href="list">목록보기</a>&nbsp;&nbsp;
<a href="delete?bid=${content_view.bid}">삭제</a>&nbsp;&nbsp; <a href= "reply_view?bid=${content_view.bid}">답변</a></td>
</tr>

 </form>
 </table> 
</body>
</html>