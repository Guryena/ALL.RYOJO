<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>中部</title>
<link rel="stylesheet" href="/css/travel_region.css">

</head>

<body>
		<%@ include file="../header.jsp"%>
		<div class="container">
		<div id="pageTitle">
			<h2 class="mainTitle">中部地方</h2>
			<p id="chubuTitle">愛知　静岡　長野　山梨</p>
			<p>富山　石川　福井　岐阜　新潟</p>
		</div>
			<main>
				<div id="checkBox">
					<label><input type="checkbox" id="shopping" class="categori" value="shopping">ショッピング</label><br>
					<label><input type="checkbox" id="cafe" class="categori" value="cafe">カフェ</label><br>
					<label><input type="checkbox" id="sightseeing" class="categori" value="sightseeing">観光スポット</label><br>
					<label><input type="checkbox" id="hotel" class="categori" value="hotel">ホテル</label><br>
					<label><input type="checkbox" id="station" class="categori" value="station">駅</label>
				</div>
		
				<div id="googleMap">
					<%@ include file="googlemap/chubuMap.jsp" %>
				</div>
			</main>
		</div>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>