var location;
var offset = 1;
var prevEventPage, nextEventPage;
var total = 0;

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
});


/* This function is called when the user clicks on the search button 
It checks the radius filter parameter and converts it from miles to meters.*/
function locationSearch() {
    offset = 1;
    getFirstEventPage();
    initializeEventPrevNext();
    setEventHandlers();
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
                    var loc = city;
                    $("#locationName").val(loc);
                    getFirstEventPage();
                    initializeEventPrevNext();
                    setEventHandlers();
                } else {
                    $("#error").append("Unable to retrieve your address<br />");
                    getFirstEventPage();
                    initializeEventPrevNext();
                    setEventHandlers();
                }
            });
    },
          function (positionError) {
              $("#error").append("Error: " + positionError.message + "<br />");
              getFirstEventPage();
              initializeEventPrevNext();
              setEventHandlers();
          },
          {
              enableHighAccuracy: true,
              timeout: 10 * 1000 // 10 seconds
          });
}

/* Creates a message and calls the OAuth functions to create a parameterMap which
    will be passed to the yelp api to request for events based on a criteria */

function getFirstEventPage() {
    getEventHTML();
}

/* Makes an ajax call to fetch the relevant data based on the parameterMap and the url
    which is passed in the message.action field.*/

function getEventHTML() {

    var temp = document.getElementById('locationName').value;
    var event = document.getElementById('eventType').value;
    var start_date = document.getElementById('datepicker1').value;
    var end_date = document.getElementById('datepicker2').value;
    var date = "future"

    if ((end_date != null || start_date != null) && start_date == null && end_date == null) {
        alert("Please provide the Start Date and End Date coorectly");
    }
    else {

        var Date1 = new Date(start_date);
        var Date2 = new Date(end_date);

        if (end_date != null && start_date != null && Date1 > Date2) {
            alert('End Date should be greater than Start Date');
        }

        else {
            if (end_date != "") {;

                eday = Date2.getDate();
                if (eday.toString().length <= 1) {
                    eday = '0' + eday;
                }

                emonth = Date2.getMonth() + 1;
                if (emonth.toString().length <= 1) {
                    emonth = '0' + emonth;
                }
                

                eyear = Date2.getFullYear();

                sday = Date1.getDate();
                if (sday.toString().length <= 1) {
                    sday = '0' + sday;
                }

                smonth = Date1.getMonth() + 1;
                if (smonth.toString().length <= 1) {
                    smonth = '0' + smonth;
                }

                syear = Date1.getFullYear();
                date = "" + syear + smonth + sday + "00-" + eyear + emonth + eday +  "00";

                }

                if (event == "" || event == undefined || event == null) {
                    event = "Music";
                }

                var oArgs = {
                    app_key: "MkPtkR7vPVRNxjVh",
                    q: event,
                    where: temp,
                    "date": date,
                    page_size: 10,
                    sort_order: "popularity",
                    image_sizes: "large",
                    page_number: offset,
                };

                EVDB.API.call("/events/search", oArgs, function (data) {
                    createHTML(data);
                });
        }
    }
}

/* This creates the entire HTML div which will be seen when all the events
    are fetched from the yelp API */

function createHTML(data) {

    total = data.page_count;

    var y = "";
    /* If the data returned from the request is not defined or is null then we inform the user
    by mentioning that no events are found. */
    if (total == 0) {
        document.getElementById("textContainer").innerHTML = "";
        document.getElementById("error2").innerHTML = "<p>No event matched your search</p>";
        document.getElementById("search").innerHTML = "";

        /* This code is used for pagination. When there are no results then we hide both the arrows*/
        var prevButton = $("#prevRestaurantButton");
        var nextButton = $("#nextRestaurantButton");
        prevButton.removeClass();
        prevButton.addClass("hidden");
        nextButton.removeClass();
        nextButton.addClass("hidden");
    } else {
        document.getElementById("error2").innerHTML = "";
        var currentuser = document.getElementById("currUsername").value;
        for (var i = 0; i < data.events.event.length; i++) {

            y += '<div class="textData">';
            y += '<div class="imageDiv">';

            //alert(data.events.event[i].image)
            var imagestr = "";

            if (data.events.event[i].image == null || data.events.event[i].image.large.url == "" || data.events.event[i].image.large.url == null) {
                y += '<img src="../images/project/notavailable.jpg" class="imageSize" alt="" /></a><br />';
                imagestr = "../images/project/notavailable.jpg";
            } else {
                y += '<img src=' + data.events.event[i].image.large.url + ' class="imageSize" alt="" /></a><br />';
                imagestr = data.events.event[i].image.large.url;
            }

            var title = data.events.event[i].title;
            if (title == null || title == "" || title == undefined) {
                title = "Not Available";
            }
            var venue_name = data.events.event[i].venue_name;
            if (venue_name == null || venue_name == "" || venue_name == undefined) {
                venue_name = "";
            }
            var venue_address = data.events.event[i].venue_address;
            if (venue_address == null || venue_address == "" || venue_address == undefined) {
                venue_address = "";
            }
            var city = data.events.event[i].city_name;
            if (city == null || city == "" || city == undefined) {
                city = "";
            }
            var region = data.events.event[i].region_name
            if (region == null || region == "" || region == undefined) {
                region = "";
            }
            var postal_code = data.events.event[i].postal_code;
            if (postal_code == null || postal_code == "" || postal_code == undefined) {
                postal_code = "Not Available";
            }
            var start_time = data.events.event[i].start_time;
            if (start_time == null || start_time == "" || start_time == undefined) {
                start_time = "Not Available";
            }
            y += '</div>';
            y += '<div class="dataAddress"><span>';

            y += '<b style="color:#FFBF00;"> Title : </b>' + title + '</br>';
            y += '<b style="color:#FFBF00;"> Venue Name : </b>' +venue_name + '</br>';
            var address = venue_address + ',</br>' + city + ', ' + region + ', </br> ZIP Code- ' + postal_code;
            var startTime = start_time;
            if (address == "',</br>', , </br> ZIP Code- ") {
                address = "Not Avaliable"
            }
            y += '<b style="color:#FFBF00;"> Address : </b>' + address + '</br>';
            y += '<b style="color:#FFBF00;"> Time : </b>' + startTime + '</br>';
            y += '<br/></span>';
            y += '</div>';
            y += '<div class="dataTitle"><a href="' + data.events.event[i].url + '" target="_blank"><b>Book the Ticket</b></a><br/>';
            if (currentuser != "") {
                var like_data = title.replace(/;/g, ",") + ";" + data.events.event[i].url + ";" + data.events.event[i].id;
                var isliked = "Like";
                y += '<br /><button id="likeButton_' + i + '" style="width: 40%;height: 10%;font-family: Times New Roman;font-weight: bold;font-size: 15px;background-color:#105BB7;" name="Like" type="button" value="' + like_data + '" onclick="like_event(this)">' + isliked + '</button><br />';
                y += '<br /><a href="' + "EventSpecificUsers.aspx?eventid='" + data.events.event[i].id + "'&title='" + title + "'&book=" + data.events.event[i].url + "&address='" + venue_address + "'&start='" + start_time + "'&image=" + imagestr + '" target="_blank"><b>Who Else Liked This?</b></a><br />'
            }
            y += '</div>';
            y += '</div>';
            y += '<br/><br/><br/><br style="clear=left;"/>';
        }

        var searchText = "";

        document.getElementById("totalSearch").innerHTML = searchText;
        document.getElementById("textContainer").innerHTML = y;
        setEventHandlers();

        // New code added
        if (currentuser != "") {
            for (var i = 0; i < data.events.event.length; i++) {
                is_already_liked(data.events.event[i].id, "likeButton_" + i);

            }
        }
    }
}

/* This function helps in implementing the pagination feature. 
    if the user clicks on the next button i.e. request to see the next page then 
    we increase the offset value by 20 and call another function with the new
    offset value.
*/
function initializeEventPrevNext() {
    var prevButton = $("#prevRestaurantButton");
    var nextButton = $("#nextRestaurantButton");
    /* Here we check if the offset is not equal to zero. 
if it is we do not do anything because the user cannot go to the previous page
If it is not equal to zero, we decrease the offset by 20 and call the request for the
previous 20 results.*/

    $('#prevRestaurantButton').unbind('click').bind('click', function (e) {
        if (offset != 1) {
            offset = offset - 1;
            prevEventPage = offset;
            getFirstEventPage();
            var prevButton = $("#prevRestaurantButton");
        }
    });

    /* When the user clicks on the next button, it increases the offset by 20and calls
the yelp api to get next 20 results */

    $('#nextRestaurantButton').unbind('click').bind('click', function (e) {
        offset = offset + 1;
        nextEventPage = offset;
        getFirstEventPage();

        var nextButton = $("#nextRestaurantButton");
    });

}

/* This basically is used to hide or make visible the previous and the next button
    If the offset is zero or undefined then the previous button becomes hidden.
    If the (offset + 20) < total no. of results then the next button is hidden 
    Also based on the type selected, the restaurantOptions div or categoryOptions 
    div will become visible and the other one will become hidden.
    Also when the div is hidden the length of the div will become zero*/
function setEventHandlers() {
    var prevButton = $("#prevRestaurantButton");
    var nextButton = $("#nextRestaurantButton");

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


$(function () {
    $(".datepicker").datepicker();
});


function enterKey(event) {
    if (event.keyCode == 13) {
        document.getElementById('data').scrollIntoView();
        return locationSearch();
    }
}