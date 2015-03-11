<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <!--The viewport meta tag is used to improve the presentation and behavior of the samples
    on iOS devices-->
  <meta name="viewport" content="initial-scale=1, maximum-scale=1,user-scalable=no">
  <title>Map with legend</title>

  <link rel="stylesheet" href="http://js.arcgis.com/3.13/dijit/themes/claro/claro.css">
  <link rel="stylesheet" href="http://js.arcgis.com/3.13/esri/css/esri.css">
  <script src="http://js.arcgis.com/3.13/"></script>

        <script type="text/javascript" src="../../javascript/gmap3.js"></script>
  <style>
    html, body {
      height: 97%;
      width: 98%;
      margin: 1%;
    }

    #rightPane {
      width: 20%;
    }

    #legendPane {
      border: solid #97DCF2 1px;
    }
  </style>

</head>

<body class="claro">
<!--[if IE 7]>
<style>
  html, body {
    margin: 0;
  }
</style>
<![endif]-->
<div id="content"
     data-dojo-type="dijit/layout/BorderContainer"
     data-dojo-props="design:'headline', gutters:true"
     style="width: 100%; height: 100%; margin: 0;">

  <div id="rightPane"
       data-dojo-type="dijit/layout/ContentPane"
       data-dojo-props="region:'right'">

    <div data-dojo-type="dijit/layout/AccordionContainer">
      <div data-dojo-type="dijit/layout/ContentPane" id="legendPane"
           data-dojo-props="title:'Legend', selected:true">
        <div id="legendDiv"></div>
      </div>
      <div data-dojo-type="dijit/layout/ContentPane"
           data-dojo-props="title:'Pane 2'">
        This pane could contain tools or additional content
      </div>
    </div>
  </div>
  <div id="map"
       data-dojo-type="dijit/layout/ContentPane"
       data-dojo-props="region:'center'"
       style="overflow:hidden;">
  </div>
</div>
</body>

</html>