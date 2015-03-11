      var map;
 
      require([
        "esri/map", "esri/dijit/Scalebar",
        "dojo/parser",

        "dijit/layout/BorderContainer", "dijit/layout/ContentPane", "dojo/domReady!"
      ], function(
        Map, Scalebar,
        parser
      ) {
        parser.parse();

        map = new Map("map", {
          basemap: "topo",
          center: [-116.093, 34.218],
          zoom: 7
        });

        var scalebar = new Scalebar({
          map: map,
          // "dual" displays both miles and kilmometers
          // "english" is the default, which displays miles
          // use "metric" for kilometers
          scalebarUnit: "dual"
        });
      });