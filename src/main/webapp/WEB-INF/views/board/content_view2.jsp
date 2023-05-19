<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>投稿</title>
<link rel="stylesheet" href="/css/content.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="../header.jsp"%>

	<div class=container style="margin: auto; 
	margin-top: 6%;  border-width: 8px;">

	<h2 id="p">投稿</h2>
      <br>
      <form action="modify" method="post">
	<table class="table">


		<!-- input타입, 체크박스 등 (얘네들만 넘어감) 넘어갈 때 name, value 값이 넘어가고 없는 애들은 안넘어감 -->
		<input type="hidden" name="b_no" value="${content_view.b_no}">
		<tr>
			<td style="padding-left: 3%;">No: </td>
			<td style="padding-left: 10%;">${content_view.b_no}</td>
			<!-- 전송버튼 누를 때 안넘어감 -->
		</tr>

		<tr>
			<td style="padding-left: 0.3%; left:80px;">アクセス数</td>
			<td style="padding-left: 9.5%;">없음</td>
		</tr>

		<tr>
			<td style="padding-left: 1.5%; left:80px;">作成者</td>
<%-- 			<td><input type="text" name="u_nickname" 
				value="${content_view.u_nickname}" style="padding-left: 9.5%; border:none;"></td>
 --%>			<td style="padding-left: 9.5%;">
				${content_view.u_nickname}</td>
		</tr>

		<tr>
			<td style="padding-left: 1.3%; left:80px;">タイトル</td>
			<td><input type="text" name="b_title" style=" padding-left: 9.0%; border:none;"
				value="${content_view.b_title}"></td>
		</tr>

		<tr>
			<td style="padding-left: 2.3%; left:80px;">内容</td>
			<td style="padding-left:5%"><textarea cols="100" rows="10" name="b_content"> ${content_view.b_content}</textarea></td>
		</tr>

		<tr>
			<td colspan="2"><input style="margin-left:84.5%;" type="submit" value="修正">
				&nbsp;&nbsp; <a href="list" >リスト</a>&nbsp;&nbsp; 
				<a href="delete?b_no=${content_view.b_no}">削除</a>&nbsp;&nbsp;</td>
		</tr>
	</table>
	</form>
	</div>

	<form action="writeComment" method="post">

		<input type="hidden" name="b_no" value="${content_view.b_no}">
		<%-- <input type="hidden" name="b_hit" value="${content_view.b_hit}">
 --%>
<!-- 댓글 길이 카운팅 -->
	<script>
 function countingLength(c_content) {
    if(c_content.value.length>1000) {
        alert('댓글을 1000자 이하로 입력해 주세요.');
        c_content.value = c_content.value.substring(0,1000);
        c_content.focus();
    }
    document.getElementById('counter').innerText=c_content.value.length + '/1000字';
}

</script>



		<!-- 댓글 작성 란-->

		<div class=container style="margin: auto; 
	margin-top: 6%;">
			<fieldset>
				<legend class="skipinfo" style="font-size: 18px;">コメント</legend> <br>
				<div class="cm_input">
					<p>
						<textarea id="replyContent" name="c_content"
							onkeyup="countingLength(this);" cols="90" rows="2.5"
							placeholder="コメントを入力してください。"></textarea>
					</p>
					<span><button class="btns" style="margin-left:55%;">登録</button> <i id="counter">0/1000자</i></span>
				</div>
			</fieldset>
		</div>
	</form>
	



	<!--  댓글 오는 자리    -->

<div class=container>
	<c:forEach var="board" items="${reply_view}">



			
				 
				 <div>
				 <span style="color: darkgray; font-size: 13.7px;">${board.u_nickname}</span> &nbsp;&nbsp;
				 <span style="color: darkgray; font-size: 12.5px;">${board.c_time}</span><br>
				 ${board.c_content}
				   <button class="btns">수정</button>
				   <button id="${board.c_no}" class="btn_delete">삭제</button></a></div>
         		  
         		 </div>
			
	
  
	<!-- 	</table> -->
	</c:forEach>
</div>




	<%@ include file="../footer.jsp"%>

</body>

<script type="text/javascript">
   
      $(document).ready(function (){
    	  
         $(document).on("click",".btn_delete",function(){
        	 console.log("==================================");
             
        	 console.log($(this).attr("id"));
            
            var id = $(this).attr("id");
            
            $(this).parent().remove();   
            
            $.ajax({
                type : "DELETE",
                url : "${pageContext.request.contextPath}/jboard/replyDelete/" + id,
                success: function (result) {       
                   console.log("삭제된 수" + result);                 
         
                },
                error: function (e) {
                    console.log(e);
                }
            });
            
         });
         
      });
   </script>
</html>