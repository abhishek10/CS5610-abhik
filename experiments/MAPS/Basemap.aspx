<!DOCTYPE HTML>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no">
  <title>Basemap Toggle</title>
  <link rel="stylesheet" href="http://js.arcgis.com/3.13/esri/css/esri.css">
  <style>
    html, body, #map {
      padding:0;
      margin:0;
      height:100%;
    }
    #BasemapToggle {
      position: absolute;
      top: 20px;
      right: 20px;
      z-index: 50;
    }
  </style>
  <script src="//js.arcgis.com/3.13/"></script>
      <script type="text/javascript" src="../../javascript/gmap5.js"></script>

</head>
<body>
  <div id="map" class="map">
    <div id="BasemapToggle"></div>
  </div>
</body>
</html>
 