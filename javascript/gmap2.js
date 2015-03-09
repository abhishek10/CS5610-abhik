require([

  "esri/map",
  "esri/dijit/Search",
  "dojo/domReady!"

], function (Map, Search) {
    var map = new Map("map", {
        basemap: "gray",
        center: [-120.435, 46.159], // lon, lat
        zoom: 7
    });

    var s = new Search({
        map: map
    }, "search");
    s.startup();

});