var message;
var location;
var parameters;
var offset = 1;
var prevRestaurantPage, nextRestaurantPage;
var total = 0;
var category = 'food';
var cat_filter;
var radius;



/* This function will appear in 2 scenarios
    1. When there is no query parameters in the url
    2. When there are query parameters in the url
If there are query parameters then the default values will not be considered.
If there are no qeury parameters then we will get the current location of the
user will the help of google geocoder object.
Also we convert the query parameter values to lower case. */
$(document).ready(function () {
    offset = 1;
    getLocationClick();
    getFirstRestaurantPage();
    initializeRestaurantPrevNext();
    setRestaurantHandlers();
});


/* This function is called when the user clicks on the search button 
It checks the radius filter parameter and converts it from miles to meters.*/
function locationSearch() {
    offset = 1;
    getFirstRestaurantPage();
    initializeRestaurantPrevNext();
    setRestaurantHandlers();
    return false;
}

/* This function is called in the document.read function.
    This function returns the current location of the user and places it in the
    search box. We use google geocoder object*/
function getLocationClick() {
    document.getElementById('error').innerHTML = "";
    navigator.geolocation.getCurrentPosition(function (position) {
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({
            "location": new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
        },
            function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    var city;
                    var state = "";
                    /* address_components is an array and from that we find the city which is
                        of type locality and state which is of type administrative_area_level_1 */
                    var result = results[0].address_components;
                    for (var c = 0; c < result.length; c++) {
                        if (result[c].types[0] == 'locality')
                            city = result[c].long_name;
                        if (result[c].types[0] == 'administrative_area_level_1')
                            state = result[c].short_name;
                    }
                    if (state != "")
                        var loc = city + ', ' + state;
                    else
                        var loc = city;
                    $("#locationName").val(loc);
                } else
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
}

/* Creates a message and calls the OAuth functions to create a parameterMap which
    will be passed to the yelp api to request for restaurants based on a criteria */

function getFirstRestaurantPage() {
    getRestaurantHTML();
}

/* Makes an ajax call to fetch the relevant data based on the parameterMap and the url
    which is passed in the message.action field.*/

function getRestaurantHTML() {

    var temp = document.getElementById('locationName').value;
    var event = document.getElementById('eventType').value;

    if (event == "" || event == undefined || event == null) {
        event = "Music";
    }

    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: event,
        where: temp,
        "date": "future",
        page_size: 10,
        sort_order: "popularity",
        image_sizes: "large",
        page_number : offset,
    };

    EVDB.API.call("/events/search", oArgs, function (data) {
        createHTML(data);
    });
}

/* This creates the entire HTML div which will be seen when all the restaurants
    are fetched from the yelp API */

function createHTML(data) {

    total = data.page_count;

    var y = "";
    /* If the data returned from the request is not defined or is null then we inform the user
    by mentioning that no restaurants are found. */
    if (data == undefined || (data.events.event.length == 0)) {
        document.getElementById("textContainer").innerHTML = "";
        document.getElementById("totalSearch").innerHTML = "<p>No event matched your search</p>";

        /* This code is used for pagination. When there are no results then we hide both the arrows*/
        var prevButton = $("#prevRestaurantButton");
        var nextButton = $("#nextRestaurantButton");
        prevButton.removeClass();
        prevButton.addClass("hidden");
        nextButton.removeClass();
        nextButton.addClass("hidden");
    } else {

        for (var i = 0; i < data.events.event.length; i++) {

            y += '<div class="textData">';
            y += '<div class="imageDiv">';

            //alert(data.events.event[i].image)

            if (data.events.event[i].image == null) {

                y += '<img src="../../images/project/notavailable.jpg" class="imageSize" alt="" /></a><br />';
            } else {
                //alert(data.events.event[i].image.url);
                y += '<img src=' + data.events.event[i].image.large.url + ' class="imageSize" alt="" /></a><br />';
            }

            y += '</div>';
            y += '<div class="dataAddress"><span>';
            y += '<b style="color:#FFBF00;"> Title : </b>' + data.events.event[i].title + '</br>';
            y += '<b style="color:#FFBF00;"> Venue Name : </b>' + data.events.event[i].venue_name + '</br>';
            var address = data.events.event[i].venue_address + ',</br>' + data.events.event[i].city_name + ', ' + data.events.event[i].region_name + ', </br> ZIP Code- ' + data.events.event[i].postal_code;
            var startTime = data.events.event[i].start_time;
            y += '<b style="color:#FFBF00;"> Address : </b>' + address + '</br>';
            y += '<b style="color:#FFBF00;"> Time : </b>' + startTime + '</br>';
            y += '<br/></span>';
            y += '</div>';
            y += '<div class="dataTitle"><a href="' + data.events.event[i].url + '" target="_blank"><b>Book the Ticket</b></a><br/>';
            y += '</div>';
            y += '</div>';
            y += '<br/><br/><br/><br style="clear=left;"/>';
        }

        var searchText = "";
        //searchText += '<br/><br/><p style="font-size:18px;">Search Results have: <b style="color:#FFBF00;">Location: </b> ' + document.getElementById('locationName').value;
        //searchText += '</p><br/>';
        document.getElementById("totalSearch").innerHTML = searchText;
        document.getElementById("textContainer").innerHTML = y;
        setRestaurantHandlers();
    }
}

/* This function helps in implementing the pagination feature. 
    if the user clicks on the next button i.e. request to see the next page then 
    we increase the offset value by 20 and call another function with the new
    offset value.
*/
function initializeRestaurantPrevNext() {
    var prevButton = $("#prevRestaurantButton");
    var nextButton = $("#nextRestaurantButton");
    /* Here we check if the offset is not equal to zero. 
if it is we do not do anything because the user cannot go to the previous page
If it is not equal to zero, we decrease the offset by 20 and call the request for the
previous 20 results.*/

    $('#prevRestaurantButton').unbind('click').bind('click', function (e) {
        if (offset != 1) {
            offset = offset - 1;
            prevRestaurantPage = offset;
            getFirstRestaurantPage();
            var prevButton = $("#prevRestaurantButton");
        }
    });

    /* When the user clicks on the next button, it increases the offset by 20and calls
the yelp api to get next 20 results */

    $('#nextRestaurantButton').unbind('click').bind('click', function (e) {
        offset = offset + 1;
        nextRestaurantPage = offset;
        getFirstRestaurantPage();

        var nextButton = $("#nextRestaurantButton");
    });

}

/* This basically is used to hide or make visible the previous and the next button
    If the offset is zero or undefined then the previous button becomes hidden.
    If the (offset + 20) < total no. of results then the next button is hidden 
    Also based on the type selected, the restaurantOptions div or categoryOptions 
    div will become visible and the other one will become hidden.
    Also when the div is hidden the length of the div will become zero*/
function setRestaurantHandlers() {
    var prevButton = $("#prevRestaurantButton");
    var nextButton = $("#nextRestaurantButton");
    var foodOptions = $("#categoryOptions");
    var restOptions = $("#restaurantOptions");

    if (offset == 1 || offset == undefined) {
        prevButton.removeClass();
        prevButton.addClass("hidden");
    }
    else {
        prevButton.removeClass();
        prevButton.addClass("visible");
    }

    if ((offset + 1) < total) {
        nextButton.removeClass();
        nextButton.addClass("visible");
    } else {
        nextButton.removeClass();
        nextButton.addClass("hidden");
    }
}