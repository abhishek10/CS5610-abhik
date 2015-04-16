/* this function is called when the body is initialized. Here we create the roadMap
    based on the latitude and longitude value passed in the query parameter.
    We also create a marker positioned at that latitude and longitude. 
    We also create an info window which opens when the user clicks on the marker
    The info window contains the photo of the restaurant, title and review*/
var restaurantName = getUrlParameter("title");
var phone = getUrlParameter("phone");
var restaurantAddr = getUrlParameter("addr");

function initialize() {

    var centerLatLng = new google.maps.LatLng(lat, long);
    var mapElement = document.getElementById("map-part");
    var mapOptions = {
        zoom: 18,
        center: centerLatLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        streetViewControl: true
    };

    // This will create the map
    var map123 = new google.maps.Map(document.getElementById("map-part"), mapOptions);

    var markers = [
                      { lat: lat, lng: long, name: name, cont: contentWindow }
    ];

    // Create the markers using an array for markers
    for (index in markers) {
        addMarker(markers[index]);
    }

    function addMarker(data) {
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(data.lat, data.lng),
            map: map123,
            title: data.name,
            content: data.cont
            //icon: icon
        });
        //This is the even method that waits for the event 'click' to happen,
        //for the Object marker( teh first parameter)
        // on which it executes the function(the third parameter)
        google.maps.event.addListener(marker, "click", function () {
            openInfoWindow(marker, data.cont);

        });
    }

    // Zoom and center the map to fit the markers
    // This logic could be conbined with the marker creation.
    // Just keeping it separate for code clarity.
    var bounds = new google.maps.LatLngBounds();
    for (index in markers) {
        var data = markers[index];
        bounds.extend(new google.maps.LatLng(data.lat, data.lng));
    }
    // map123.fitBounds(bounds);


    //MVC objects of Google MAps Javascript API V3 allows map objects to store and update 
    //their presentation automatically

    var pin = new google.maps.MVCObject();


    // Set the infowindow content and display it on marker click.
    // Use a 'pin' MVCObject as the order of the domready and marker click events is not garanteed.
    function openInfoWindow(marker, cont) {


        var infowindow = new google.maps.InfoWindow({
            content: cont
        });

        pin.set("position", marker.getPosition());

        infowindow.open(map123, marker);
    }
}

/* Performs location validation. If the location textbox is empty throws an
   alert box that enter location and if the user does not enter a proper string, it still
   throws an error
   We are using the locationRegExp.exec(location) to find whether the regular 
   expression is correct or not */
function validateLocation(loc) {
    if (loc == "") {
        alert("Enter a location to get directions");
        return false;
    }
    var result = locationRegExp.exec(loc);
    var s = result[0];

    var ok = loc.length == s.length;

    if (!ok) {
        alert(locationRegExpMessage);
        return false;
    }
}

/* This function is called when the user clicks on get directions button.
Based on the travel mode selected the directions are given. Also we validate the
start and end location */
function calculateRoute(from, to, travelM) {
    // Center initialized to Naples, Italy
    validateLocation(from);
    validateLocation(to);

    var myOptions = {
        zoom: 10,
        center: new google.maps.LatLng(40.84, 14.25),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    // Draw the map
    document.getElementById("error").innerHTML = "";
    document.getElementById("map-part").innerHTML = "";
    document.getElementById("panel").innerHTML = "";
    var mapObject = new google.maps.Map(document.getElementById("map-part"), myOptions);
    var mode;
    if (travelM == "DRIVING") {
        mode = google.maps.DirectionsTravelMode.DRIVING;
    } else if (travelM == "TRANSIT") {
        mode = google.maps.DirectionsTravelMode.TRANSIT;
    } else if (travelM == "WALKING") {
        mode = google.maps.DirectionsTravelMode.WALKING;
    } else {
        mode = google.maps.DirectionsTravelMode.BICYCLING;
    }
    var directionsService = new google.maps.DirectionsService();
    var directionsRequest = {
        origin: from,
        destination: to,
        travelMode: mode,
        unitSystem: google.maps.UnitSystem.METRIC
    };
    directionsService.route(
          directionsRequest,
          function (response, status) {
              if (status == google.maps.DirectionsStatus.OK) {
                  new google.maps.DirectionsRenderer({
                      map: mapObject,
                      panel: document.getElementById('panel'),
                      directions: response
                  });
              }
              else {

                  document.getElementById("error").innerHTML = "Unable to retrieve your route <br/>";
              }
          });
}