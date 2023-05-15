<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- script - 제이쿼리 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <title>ALL.RYOJO</title>
</head>
<style>
    .join {
        text-align: center;
        padding-top: 8%;
        padding-bottom: 4%;
    }

    .id {
        margin-bottom: 2%;
        margin-left: 43%;
    }

    .pw {
        margin-bottom: 2%;
        margin-left: 43%;
    }

    .nickname {
        margin-bottom: 2%;
        margin-left: 43%;
    }

    .btn {
        margin-bottom: 2%;
        margin-left: 47%
    }

    .btn:hover {
        background-color: gray;
        color: white;
        cursor: pointer;
    }
</style>

<body>
           <%@ include file="../header.jsp"%>

        <div class="content">

            <div class="join">
                <h1>Sign up</h1>
            </div>
            
            <form class="join__input" action="/addUser" method="post">
                <div>
                    <input type="text" name="u_id" class="id" placeholder="ID" >
                </div>
                <div>
                    <input type="password" name="u_pw" class="pw" placeholder="PW" >
                </div>
                <div>
                    <input type="text" name="u_nickname" class="nickname" placeholder="ニックネーム" >
                </div>
                <input class="btn" type="submit" value="登録">
            </form>
      

            <%@ include file="../footer.jsp"%>
            
</body>
<script>
		
		$(document).ready(function(){
			
			$(".join__input").submit(function(event){
				if($(".id").val()==""){
					alert("id를 입력하세요");
					event.preventDefault();
				}else if($(".pw").val()==""){
					alert("비밀번호를 입력하세요!!");
					event.preventDefault();
				}else if($(".nickname").val()==""){
					alert("닉네임을 입력하세요!!");
					event.preventDefault();
				}else{
					alert("회원가입 되었습니다!!");
				}
				
			});
			
		});

/* 		function login(){
			var id = document.querySelector(".id");
			var pw = document.querySelector(".pw");
			
			if(id.value=="" || pw.vlaue==""){
				alert("로그인을 할 수 없습니다.")
			}
			else
				{
				alert("로그인이 되었습니다.")
				}
		} */
        
</script>

</html>