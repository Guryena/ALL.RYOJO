<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	main {
		font-family: "ヒラギノ角ゴ ProN", "MSゴシック", "メイリオ", sans-serif;
		display: flex;
		justify-content: space-between;
		margin: 100px 0;
	}
	#checkBox {
		display: block;
		width: 50%;	
	}
	#hokkaido {
		display: inline-block;
		background-color: aqua;
		width: 50%;
		height: auto;
	}
	
</style>

<%@ include file="../PageDesign.jsp"%>
</head>

<body>
	<%@ include file="../header.jsp"%>
	<div class="container">
		<main>
			<div id="checkBox">
				<input type="checkbox" id="shopping" name="" value="shopping"> ショッピング<br> 
				<input type="checkbox" id="cafe" name="" value="cafe">カフェ<br> 
				<input type="checkbox" id="sightseeing" name=""value="sightseeing"> 観光スポット<br> 
				<input type="checkbox" id="hotel" name="" value="hotel"> ホテル<br> 
				<input type="checkbox" id="station" name="" value="station"> 駅<br>
			</div>
			
			<div id="hokkaido">地図</div>
		
		</main>
	</div>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>