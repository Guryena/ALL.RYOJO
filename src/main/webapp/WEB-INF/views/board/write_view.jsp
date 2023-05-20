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
     <h2 style="margin-top: 2.8%;  
     margin-left: 44.3%;">自由記入欄</h2>
    <div class="container">
     <table class="table">
      <form action="/jboard/write" method="post">
         <input type="hidden" name="u_id" value="${write_view.u_id}">
         <tr>
            <td style="border-spacing: 2px;">
            作成者 </td>   <!-- 닉네임이 뿌려져야함 -->
            <td style="padding-right :1.5%;">An</td> 
            <%-- <td size = "50">${u_nickname}</td>　시큐리티 연결되어있을 때 위에 부분 주석 처리하고 이 부분 주석풀기 --%>
         </tr>
         <tr>
            <td>タイトル</td>
            <td> <input type="text" name="b_title" 
            style="padding-left: 7.8%;"> </td>
         </tr>
         <tr>
            <td style="">内容</td>
            <td style="padding-left:1%"> <textarea name="b_content" rows="10" cols="110"  
            ></textarea> </td>
         </tr>
         <tr >
            <td colspan="2"> <input type="submit" value="登録" 
            style="margin-left:90.5%;"> &nbsp;&nbsp; 
            <a href="list">リスト</a></td>
         </tr>
      </form>
        </table>
        </div>
        <%@ include file="../footer.jsp"%>
</body>
</html>