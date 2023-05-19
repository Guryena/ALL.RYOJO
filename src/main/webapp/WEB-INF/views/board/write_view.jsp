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
 <%@ include file="../header.jsp"%>
 <div class=container">
     <table class="table">
      <form  action="/jboard/write" method="post">
         <input type="hidden" name="u_id" value="${write_view.u_id}">
         <tr>
            <td> 이름 </td>   <!-- 닉네임이 뿌려져야함 -->
            <td size = "50">${u_nickname}</td>
         </tr>
         <tr>
            <td> 제목 </td>
            <td> <input type="text" name="b_title" size = "50"> </td>
         </tr>
         <tr>
            <td> 내용 </td>
            <td> <textarea name="b_content" rows="10" ></textarea> </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list">목록보기</a></td>
         </tr>
      </form>
        </table>
        </div>
        <%@ include file="../footer.jsp"%>
</body>
</html>