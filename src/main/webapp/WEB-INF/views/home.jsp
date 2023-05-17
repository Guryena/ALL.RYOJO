<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>ALL.RYOJO</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      	
   <link rel="stylesheet" href="/css/PageDesign.css">
   <link rel="stylesheet" href="/css/home.css">

    
  </head>
  <body>
    
<main>

  <section class="text-center container">
    
      <div class="col-lg-6 col-md-8 mx-auto">
        <img class="logo" src="/img/allryojo.png">
        <div class="container">
    		<div class="clock">
     		 	<p class="clock-date"></p>
     		 	<p class="clock-time"></p>
    		</div>
  		</div>
           <script src="/js/home_timer.js"></script>
        <!-- <h1 id="clock"></h1> -->
       <div id="search">
		<script async src="https://cse.google.com/cse.js?cx=370b2ac57c0c74283"></script>
		<div class="gcse-searchbox-only"></div>
		</div>
      </div>
    
  </section>

    <div class="container">
  <div class="album py-5">

      <div class="row row-cols-4 row-cols-sm-1 row-cols-md-4 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <a href="/arj/travel"><img src="/img/travel.png" class="icon"> <title>旅行</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">旅行</text></svg></a>

          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <a href="/arj/statistics/population"><img src="/img/statistics.png" class="icon"> <title>統計</title><rect width="100%" height="100%" fill="#55595c"/> <text x="50%" y="50%" fill="#eceeef" dy=".3em">統計</text></svg></a>

          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <a href="#"><img src="/img/board.png" class="icon"> <title>匿名掲示板</title><rect width="100%" height="100%" fill="#55595c"/> <text x="50%" y="50%" fill="#eceeef" dy=".3em">匿名掲示板</text></svg></a>

          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <a href="#"> <img src="/img/about.png" class="icon"> <title>About us</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">About us</text></svg></a>

          </div>
        </div>
        
      </div>
    </div>
  </div>

</main>

  <%@ include file="footer.jsp"%>


    <script src="/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

      
  <!-- Code injected by live-server -->
<script>
	
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	
</script>
</body>
</html>
