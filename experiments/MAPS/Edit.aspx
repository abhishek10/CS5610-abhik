﻿<!DOCTYPE html>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,user-scalable=no">
    <!--The viewport meta tag is used to improve the presentation and behavior of the samples 
      on iOS devices-->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no">
    <title>Maps Toolbar</title>
    
    <link rel="stylesheet" href="http://js.arcgis.com/3.13/dijit/themes/nihilo/nihilo.css">
    <link rel="stylesheet" href="http://js.arcgis.com/3.13/esri/css/esri.css">
    <!-- <link rel="stylesheet" type="text/css" href="gmap.css" /> -->
          <style>
      html, body, #mainWindow {
        font-family: sans-serif; 
        height: 100%; 
        width: 100%; 
      }
      html, body {
        margin: 0; 
        padding: 0;
      }
      #header {
        height: 80px; 
        overflow: auto;
        padding: 0.5em;
      }
    </style>
    
    <script src="http://js.arcgis.com/3.13/"></script>
    <script type="text/javascript" src="../../javascript/gmap.js"></script>

  </head>
  <body class="nihilo">

  <div id="mainWindow" data-dojo-type="dijit/layout/BorderContainer" data-dojo-props="design:'headline'">
    <div id="header" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'top'">
      <span>Draw:<br /></span>
      <button data-dojo-type="dijit/form/Button">Point</button>
      <button data-dojo-type="dijit/form/Button">Multi Point</button>
      <button data-dojo-type="dijit/form/Button">Line</button>
      <button data-dojo-type="dijit/form/Button">Polyline</button>
      <button data-dojo-type="dijit/form/Button">Polygon</button>
      <button data-dojo-type="dijit/form/Button">Freehand Polyline</button>
      <button data-dojo-type="dijit/form/Button">Freehand Polygon</button>
      <!--The Arrow,Triangle,Circle and Ellipse types all draw with the polygon symbol-->
      <button data-dojo-type="dijit/form/Button">Arrow</button>
      <button data-dojo-type="dijit/form/Button">Triangle</button>
      <button data-dojo-type="dijit/form/Button">Circle</button>
      <button data-dojo-type="dijit/form/Button">Ellipse</button>
    </div>
    <div id="map" data-dojo-type="dijit/layout/ContentPane" data-dojo-props="region:'center'"></div>
  </div>

  </body>
</html>
 