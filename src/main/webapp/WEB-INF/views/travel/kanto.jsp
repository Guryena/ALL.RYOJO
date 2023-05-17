<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>関東</title>
<link rel="stylesheet" href="/css/travel_region.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

</head>

<body>
		<%@ include file="../header.jsp"%>
		<div class="container">
		<div id="pageTitle">
			<h2 class="mainTitle">関東</h2>
			<p id="kantoTitle">東京　神奈川　栃木</p>
			<p>埼玉　千葉　茨城　群馬</p>
		</div>
			<main>
				<div id="checkBox">
				<p class="explain">チェック後、Search Box上でEnterしてください。</p>
					<label><input type="checkbox" id="shopping" name="categori" value="ショッピング" onclick="getCheckboxValue(event)">ショッピング</label><br>
					<label><input type="checkbox" id="cafe" name="categori" value="カフェ" onclick="getCheckboxValue(event)">カフェ</label><br>
					<label><input type="checkbox" id="sightseeing" name="categori" value="観光スポット" onclick="getCheckboxValue(event)">観光スポット</label><br>
					<label><input type="checkbox" id="hotel" name="categori" value="ホテル" onclick="getCheckboxValue(event)">ホテル</label><br>
					<label><input type="checkbox" id="station" name="categori" value="駅" onclick="getCheckboxValue(event)">駅</label>
				</div>
		
				<div id="googleMap">
					<%@ include file="googlemap/kantoMap.jsp" %>
				</div>
			</main>
		</div>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>