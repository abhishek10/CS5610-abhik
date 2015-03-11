<!DOCTYPE html>
<html> 
  <head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!--The viewport meta tag is used to improve the presentation and behavior of the samples 
      on iOS devices-->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no">
    <title>Map with scalebar</title>

    <link rel="stylesheet" href="http://js.arcgis.com/3.13/dijit/themes/claro/claro.css"> 
    <link rel="stylesheet" href="http://js.arcgis.com/3.13/esri/css/esri.css">
    <style> 
      html, body { height: 100%; width: 100%; margin: 0; padding: 0; }
      #map{padding:0;}
    </style> 

    <script src="http://js.arcgis.com/3.13/"></script>
          <script type="text/javascript" src="../../javascript/gmap4.js"></script>

  </head> 
  
  <body class="claro"> 
    <div data-dojo-type="dijit/layout/BorderContainer" 
         data-dojo-props="design:'headline', gutters:false"
         style="width: 100%; height: 100%; margin: 0;"> 

      <div id="map" 
           data-dojo-type="dijit/layout/ContentPane" 
           data-dojo-props="region:'center'" 
           style="overflow:hidden;"> 
      </div> 

    </div> 
  </body> 
</html>