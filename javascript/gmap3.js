    var map;
    require([
      "esri/map", "esri/layers/FeatureLayer", "esri/dijit/Legend",
      "dojo/_base/array", "dojo/parser",
      "dijit/layout/BorderContainer", "dijit/layout/ContentPane", 
      "dijit/layout/AccordionContainer", "dojo/domReady!"
    ], function(
      Map, FeatureLayer, Legend,
      arrayUtils, parser
    ) {
      parser.parse();

      map = new Map("map", {
        basemap:"topo",
        center: [-96.53, 38.374],
        zoom: 13
      });

      var rivers = new FeatureLayer("http://sampleserver3.arcgisonline.com/ArcGIS/rest/services/Hydrography/Watershed173811/MapServer/1", {
        mode: FeatureLayer.MODE_ONDEMAND,
        outFields:["*"]
      });
      var waterbodies = new FeatureLayer("http://sampleserver3.arcgisonline.com/ArcGIS/rest/services/Hydrography/Watershed173811/MapServer/0", {
        mode: FeatureLayer.MODE_ONDEMAND,
        outFields:["*"]
      });

      //add the legend
      map.on("layers-add-result", function (evt) {
        var layerInfo = arrayUtils.map(evt.layers, function (layer, index) {
          return {layer:layer.layer, title:layer.layer.name};
        });
        if (layerInfo.length > 0) {
          var legendDijit = new Legend({
            map: map,
            layerInfos: layerInfo
          }, "legendDiv");
          legendDijit.startup();
        }
      });

      map.addLayers([waterbodies, rivers]);
    });