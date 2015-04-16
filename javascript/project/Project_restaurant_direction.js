var lat = "";
var long = "";
var contentWindow = "";

$(document).ready(function () {

    // If the browser supports the Geolocation API
    if (typeof navigator.geolocation == "undefined") {
        $("#error").text("Your browser doesn't support the Geolocation API");
        return;
    }

    getLocationClick();  

    $("#calculate-route1").submit(function (event) {
        event.preventDefault();
        calculateRoute($("#from1").val(), $("#to1").val(), $('input[name="travelMode1"]:checked').val());
    });
});

$(document).ready(function () {
    getRestaurantPage();
});

/* This function is called when the user clicks on get current location link.
    This function returns the current location of the user and places it in the
    location text box. We use google geocoder object*/

function getLocationClick() {
    document.getElementById("error").innerHTML = "";
    $("#from1-link").click(function (event) {
        event.preventDefault();
        var addressId = this.id.substring(0, this.id.indexOf("-"));
        navigator.geolocation.getCurrentPosition(function (position) {
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({
                "location": new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
            },
            function (results, status) {
                if (status == google.maps.GeocoderStatus.OK)
                    $("#" + addressId).val(results[0].formatted_address);
                else
                    $("#error").append("Unable to retrieve your address<br />");
            });
        },
        function (positionError) {
            $("#error").append("Error: " + positionError.message + "<br />");
        },
        {
            enableHighAccuracy: true,
            timeout: 10 * 1000 // 10 seconds
        });
    });
   
}

/* Creates a message and calls the OAuth functions to create a parameterMap which
    will be passed to the yelp api to request for restaurants based on a criteria */

function getRestaurantPage() {
    parameters = [];
    parameters.push(['ywsid', auth.consumerKey]);

    parameters.push(['phone', phone]);
    var action = 'http://api.yelp.com/phone_search';

    var message = createMessage(action, 'GET', parameters);

    OAuth.setTimestampAndNonce(message);
    OAuth.SignatureMethod.sign(message, accessor);

    parameterMap = OAuth.getParameterMap(message.parameters);
    parameterMap.oauth_signature = OAuth.percentEncode(parameterMap.oauth_signature)

    getRestaurantHTML(message, parameterMap);
}

/* Makes an ajax call to fetch the relevant data based on the parameterMap and the url
    which is passed in the message.action field.*/

function getRestaurantHTML(message, parameterMap) {
    $.ajax({
        'url': message.action,
        'data': parameterMap,
        'cache': true,
        'dataType': 'jsonp',
        'jsonpCallback': 'cb',
        'error': function (error) {
            document.getElementById("map-part").innerHTML = "Some Server Error, Try Again";
        },
        'success': createHTML,
    });
}
/* This creates the entire HTML div which will be seen when all the restaurants
    are fetched from the yelp API 
    This div makes one location constant which is the location of the current restaurant */
function createHTML(data) {
    var y = "";
    /* If the data returned from the request is not defined or is null then we inform the user
by mentioning that no restaurants are found. */
    if (data == undefined || (data.businesses.length == 0)) {
        document.getElementById("map-part").innerHTML = "";
        document.getElementById("map-part").innerHTML = "<p>No restaurants matched your search</p>";
    } else {

        var busi = "";
        var len = data.businesses.length;

        for (var len1 = 0; len1 < len; len1++) {
            var b = data.businesses[len1];
            if ((b.name == restaurantName) && (b.address1 == restaurantAddr)) {
                busi = data.businesses[len1];
                break;
            }
        }

        var name = busi.name;
        var yelp_url1 = busi.url;

        var addr1 = busi.address1;
        var addr2 = busi.address2;
        var addr3 = busi.address3;
        var phone = busi.phone;
        var city = busi.city;
        var state = busi.state;
        var zip = busi.zip;
        lat = busi.latitude;
        long = busi.longitude
        var ratingImg = busi.rating_img_url;

        var s = "";
        s += '<br/><br/><div class="source"><label for="to">Destination:</label><br/></div>';
        s += '<span style="font-family:Times New Roman;font-size:20px;">' + restaurantName + '</span><br/>';
        s += '<input type="text" id="to1" name="to1" required="required" value="' + addr1 + ',' + city + ',' + state + ' ' + zip + '" placeholder="Destination"" readonly/>';
        document.getElementById('destination').innerHTML = s;

        var m1 = "";
        m1 += '<br/><div class="source"><label for="mode">Travel Mode:</label><br/></div>';
        m1 += '<div class="radio"><label><input class="option" type="radio" name="travelMode1" value="DRIVING" checked /> Driving</label>';
        m1 += '<label><input class="option" type="radio" name="travelMode1" value="BICYCLING" /> Bicylcing</label>';
        m1 += '<label><input class="option" type="radio" name="travelMode1" value="TRANSIT" /> Public transport</label>';
        m1 += '<label><input class="option" type="radio" name="travelMode1" value="WALKING" /> Walking</label></div>';
        m1 += '<br/><br/>';
        m1 += '<input id="search" type="submit" value="Get Direction"/><br/>';
        document.getElementById('modes1').innerHTML = m1;       
    }

    document.getElementById('title1').innerHTML = "Directions to reach "+restaurantName;
}
