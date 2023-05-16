<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>北海道</title>
<link rel="stylesheet" href="/css/travel_region.css">

</head>

<body>
		<%@ include file="../header.jsp"%>
		<div class="container">
		<div id="pageTitle">
			<h2 id="hokkaidoTitle" class="mainTitle">北海道</h2>
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
					<%@ include file="googlemap/hokkaidoMap.jsp" %>
				</div>
			</main>
		</div>
	
	<%@ include file="../footer.jsp"%>
</body>
</html>