<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Places Search Box</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
	<script type="text/javascript" src="/js/searchBox.js"></script>
  </head>
  
  
  
  
  <script src="/js/kyushuMap.js"></script>
  
<link rel="stylesheet" type="text/css" href="/css/mapDesign.css" />  
  
  
  <body>
    <input
      id="pac-input"
      class="controls"
      type="text"
      placeholder="Search Box"
    />
    <div id="map"></div>

    <!-- 
      The `defer` attribute causes the callback to execute after the full HTML
      document has been parsed. For non-blocking uses, avoiding race conditions,
      and consistent behavior across browsers, consider loading using Promises.
      See https://developers.google.com/maps/documentation/javascript/load-maps-js-api
      for more information.
      -->
<script
      src="https://maps.googleapis.com/maps/api/js?key=YourKey&callback=initMap&libraries=visualization&v=weekly"
      defer
    ></script>
  </body>
</html>
