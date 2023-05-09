<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap css -->
<link href="/css/PageDesign.css" rel="stylesheet">
<!-- statistics css -->
<link href="/css/statisticsCSS/statistics.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Population Stat</title>

<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>


<script>
    
 // This example requires the Visualization library. Include the libraries=visualization
 // parameter when you first load the API. For example:
 // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=visualization">
 let map, heatmap;

 function initMap() {
   map = new google.maps.Map(document.getElementById("map"), {
     zoom: 5,
     center: { lat: 35.673709534547484, lng: 139.77656001199605 },  
     mapTypeId: "satellite",
   });
   heatmap = new google.maps.visualization.HeatmapLayer({
     data: getPoints(),
     map: map,
   });
   document
     .getElementById("toggle-heatmap")
     .addEventListener("click", toggleHeatmap);
   document
     .getElementById("change-gradient")
     .addEventListener("click", changeGradient);
   document
     .getElementById("change-opacity")
     .addEventListener("click", changeOpacity);
   document
     .getElementById("change-radius")
     .addEventListener("click", changeRadius);
 }

 function toggleHeatmap() {
   heatmap.setMap(heatmap.getMap() ? null : map);
 }

 function changeGradient() {
   const gradient = [
     "rgba(0, 255, 255, 0)",
     "rgba(0, 255, 255, 1)",
     "rgba(0, 191, 255, 1)",
     "rgba(0, 127, 255, 1)",
     "rgba(0, 63, 255, 1)",
     "rgba(0, 0, 255, 1)",
     "rgba(0, 0, 223, 1)",
     "rgba(0, 0, 191, 1)",
     "rgba(0, 0, 159, 1)",
     "rgba(0, 0, 127, 1)",
     "rgba(63, 0, 91, 1)",
     "rgba(127, 0, 63, 1)",
     "rgba(191, 0, 31, 1)",
     "rgba(255, 0, 0, 1)",
   ];

   heatmap.set("gradient", heatmap.get("gradient") ? null : gradient);
 }

 function changeRadius() {
   heatmap.set("radius", heatmap.get("radius") ? null : 75);
 }

 function changeOpacity() {
   heatmap.set("opacity", heatmap.get("opacity") ? null : 0.2);
 }


 
 // Heatmap data: 500 Points
 function getPoints() {
   return [
     {location: new google.maps.LatLng(43.32084098779674, 141.27681270535223),  weight: ${stat.get(1).getPopulation()}},//Hokkaido Prefecture
     {location: new google.maps.LatLng(40.82850553619714, 140.75265094281292), weight: ${stat.get(2).getPopulation()}}, //Aomori Prefecture
     {location: new google.maps.LatLng(39.793367355861676, 141.20895205068533), weight: ${stat.get(3).getPopulation()}}, //Iwate Prefecture
     {location: new google.maps.LatLng(38.29354187354139, 140.8660980319711), weight: ${stat.get(4).getPopulation()}}, //Miyagi Prefecture
     {location: new google.maps.LatLng(39.72236044022067, 140.10211475604333), weight: ${stat.get(5).getPopulation()}}, //Akita Prefecture
     {location: new google.maps.LatLng(38.25719470863484, 140.3413949702782), weight: ${stat.get(6).getPopulation()}}, //Yamagata Prefecture
     {location: new google.maps.LatLng(37.76139621877605, 140.4758719407312), weight: ${stat.get(7).getPopulation()}}, //Hukusima Prefecture
     {location: new google.maps.LatLng(36.36894495454945, 140.47396300979648), weight: ${stat.get(8).getPopulation()}}, //Ibaraki Prefecture
     {location: new google.maps.LatLng(36.558368094543994, 139.88625504965734), weight: ${stat.get(9).getPopulation()}}, //Dochigi Prefecture
     {location: new google.maps.LatLng(36.38944634930251, 139.06377957190094), weight: ${stat.get(10).getPopulation()}}, //Gunma Prefecture
     {location: new google.maps.LatLng(35.88792280455887, 139.64540162414193), weight: ${stat.get(11).getPopulation()}}, //Saitama Prefecture
     {location: new google.maps.LatLng(35.631901916212726, 140.1077197746091), weight: ${stat.get(12).getPopulation()}}, //Chiba Prefecture
     
     {location: new google.maps.LatLng(35.711966149622384, 139.77445494942165), weight: ${stat.get(13).getPopulation()}}, //Tokyo Metropolis
     
     {location: new google.maps.LatLng(35.56468320507183, 139.6929515093404), weight: ${stat.get(14).getPopulation()}}, //KanaGawa Prefecture
     {location: new google.maps.LatLng(38.08010348374247, 139.16211190929943), weight: ${stat.get(15).getPopulation()}}, //Niigata Prefecture
     {location: new google.maps.LatLng(36.71397038111218, 137.21086246522177), weight: ${stat.get(16).getPopulation()}}, //Doyama Prefecture
     {location: new google.maps.LatLng(36.673767559061, 136.69375361663293), weight: ${stat.get(17).getPopulation()}}, //Ishikawa Prefecture
     {location: new google.maps.LatLng(36.106837761202996, 136.26145027504867), weight: ${stat.get(18).getPopulation()}}, //Fukui Prefecture
     {location: new google.maps.LatLng(35.684583389582556, 138.73269590918906), weight: ${stat.get(19).getPopulation()}}, //Yamanashi Prefecture
     {location: new google.maps.LatLng(36.77447010953473, 138.19574149426745), weight: ${stat.get(20).getPopulation()}}, //Nagano Prefecture
     {location: new google.maps.LatLng(35.45823272831684, 136.76938286122208), weight: ${stat.get(21).getPopulation()}}, //Gifu Prefecture
     {location: new google.maps.LatLng(35.04486812327486, 138.42129924359742), weight: ${stat.get(22).getPopulation()}}, //Shizuoka Prefecture
     {location: new google.maps.LatLng(35.169526553658656, 136.9234314764582), weight: ${stat.get(23).getPopulation()}}, //Aichi Prefecture
     {location: new google.maps.LatLng(34.7507563802453, 136.5053952591778), weight: ${stat.get(24).getPopulation()}}, //Mie Prefecture
     {location: new google.maps.LatLng(35.041674693860635, 135.86396613016154), weight: ${stat.get(25).getPopulation()}}, //Shiga Prefecture
     {location: new google.maps.LatLng(34.97346076926247, 135.75383471667556), weight: ${stat.get(26).getPopulation()}}, //Kyoto-fu
     {location: new google.maps.LatLng(34.71406301585976, 135.48790752630092), weight: ${stat.get(27).getPopulation()}}, //Osaka-fu
     {location: new google.maps.LatLng(34.69167593847066, 135.192939987805), weight: ${stat.get(28).getPopulation()}}, //Hyogo Prefecture
     {location: new google.maps.LatLng(34.68962670489517, 135.8071963036387), weight: ${stat.get(29).getPopulation()}}, //Nara Prefecture
     {location: new google.maps.LatLng(34.23236090702718, 135.17639230292625), weight: ${stat.get(30).getPopulation()}}, //Wakayama Prefecture
     {location: new google.maps.LatLng(35.4999886110455, 134.24016953001072), weight: ${stat.get(31).getPopulation()}}, //Tottori Prefecture
     {location: new google.maps.LatLng(35.47449083144728, 133.0557615614525), weight: ${stat.get(32).getPopulation()}}, //Shimane Prefecture
     {location: new google.maps.LatLng(34.6551456, 133.9195019), weight: ${stat.get(33).getPopulation()}}, //Okawama Prefecture
     {location: new google.maps.LatLng(34.17934365347202, 131.47941409351694), weight: ${stat.get(34).getPopulation()}}, //Yamaguchi Prefecture
     {location: new google.maps.LatLng(34.07252514630597, 134.55730720801134), weight: ${stat.get(35).getPopulation()}}, //Tokushima Prefecture
     {location: new google.maps.LatLng(34.3427879, 134.046574), weight: ${stat.get(36).getPopulation()}}, //Kagawa Prefecture
     {location: new google.maps.LatLng(33.8391574, 132.7655752), weight: ${stat.get(37).getPopulation()}}, //Ehime Prefecture
     {location: new google.maps.LatLng(33.561697196083834, 133.53149124435046), weight: ${stat.get(38).getPopulation()}}, //Kochi Prefecture
     {location: new google.maps.LatLng(33.5903547, 130.4017155), weight: ${stat.get(39).getPopulation()}}, //Fukuoka Prefecture
     {location: new google.maps.LatLng(38.3809635, 140.2759667), weight: ${stat.get(40).getPopulation()}}, //Saga Prefecture
     {location: new google.maps.LatLng(32.7502856, 129.877667), weight: ${stat.get(41).getPopulation()}}, //Nagasaki Prefecture
     {location: new google.maps.LatLng(32.8031004, 130.7078911), weight: ${stat.get(42).getPopulation()}}, //Kumamoto Prefecture
     {location: new google.maps.LatLng(33.2381718, 131.6126189), weight: ${stat.get(43).getPopulation()}}, //Oita Prefecture
     {location: new google.maps.LatLng(31.9076736, 131.4202411), weight: ${stat.get(44).getPopulation()}}, //Miyazaki Prefecture
     {location: new google.maps.LatLng(31.5965535, 130.5571158), weight: ${stat.get(45).getPopulation()}}, //Kagoshima Prefecture
     {location: new google.maps.LatLng(26.2174567, 127.6938331), weight: ${stat.get(46).getPopulation()}}, //Okinawa Prefecture
     
   ];
 }

 window.initMap = initMap;
    
    </script>



<!-- <style>
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
	width: 100%
}

#floating-panel {
	background-color: #fff;
	border: 1px solid #999;
	text-align: center;
	font-family: "Roboto", "sans-serif";
	line-height: 30px;
}

#floating-panel {
	width: 50%;
	background-color: #fff;
	border: 1px solid #999;
}

#map {
	width: 500px;
	height: 500px;
	margin: auto 0;
}

main {
	display: flex;
	justify-content: space-around;
	margin: auto 0;
}

select {
	text-align: center;
}

#select {
	margin: auto 0;
}

#pageTitle {
	text-align: center;
	margin: 30px 0 30px 0;
}
</style> -->


</head>



<body>

	<%@ include file="../header.jsp"%>

	<div class="container">
		<div id="pageTitle">
			<h2>人口統計</h2>
		</div>
		<main>


			<div id="select">
				<div id="selectBox">
					<select name="statSelect"
						onchange="if(this.value) location.href=(this.value)">
						<option>Select</option>
						<option value="http://localhost:8282/arj/statistics/population">population</option>
						<option value="http://localhost:8282/arj/statistics/hospital">hospital</option>
					</select>
				</div>

				<div id="floating-panel">
					<button id="toggle-heatmap">Toggle Heatmap</button>
					<button id="change-gradient">Change gradient</button>
					<button id="change-radius">Change radius</button>
					<button id="change-opacity">Change opacity</button>
				</div>
			</div>
			<div id="map"></div>
		</main>

		<!-- 
      The `defer` attribute causes the callback to execute after the full HTML
      document has been parsed. For non-blocking uses, avoiding race conditions,
      and consistent behavior across browsers, consider loading using Promises.
      See https://developers.google.com/maps/documentation/javascript/load-maps-js-api
      for more information.
      -->
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDITpFD_wRklv894AK6xKg0qXmNvc2YtnI&callback=initMap&libraries=visualization&v=weekly"
			defer></script>

	</div>

	<%@ include file="../footer.jsp"%>
	<!-- Bootstrap BUNDLE -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>
