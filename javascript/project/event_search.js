var message;
var location;
var parameters;
var offset = 0;
var prevRestaurantPage, nextRestaurantPage;
var total = 0;
var category = 'food';
var cat_filter;
var radius;

$(document).ready(function () {
    getFirstRestaurantPage();
    initializeRestaurantPrevNext();
    setRestaurantHandlers();

});

/* Creates a message and calls the OAuth functions to create a parameterMap which
    will be passed to the yelp api to request for restaurants based on a criteria */

function getFirstRestaurantPage() {
    location = document.getElementById("locationName123").value;
    //alert("Value : " + location);
/*    if (location == undefined) {
        location = "Boston";
    }
    event = document.getElementById("distance123");
    if (event == undefined) {
        event = "Music"
    }
    */
    getRestaurantHTML();
}

/* Makes an ajax call to fetch the relevant data based on the parameterMap and the url
    which is passed in the message.action field.*/

function getRestaurantHTML() {
    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: "music",
        where: "San Diego",
        "date": "2013061000-2015062000",
        page_size: 10,
        sort_order: "popularity",
        image_sizes: "large",
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
        document.getElementById("totalSearch").innerHTML = "<p>No restaurants matched your search</p>";

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

                if (data.events.event[i].image.large == null) {

                    y += '<img src=http://compass-usa.com/ContentImages/Great%20People/unavailable.png class="imageSize" alt="" /></a><br />';
                } else {
                    //alert(data.events.event[i].image.url);
                    y += '<img src=' + data.events.event[i].image.large.url + ' class="imageSize" alt="" /></a><br />';
                }

                y += '</div>';
                y += '<div class="dataTitle"> Details: <a href="' + data.events.event[i].url + '" target="_blank"><b>Get Details</b></a><br/>';
                y += '</div>';
                y += '<div class="dataAddress">';
                y += '<br/>';

                y += data.events.event[i].city_name;
                y += '</div>';
                y += '</div>';
                y += '<br/><br/><br/><br style="clear=left;"/>';
        }

        var searchText = "Results";
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

    $('#prevRestaurantButton').unbind('click').bind('click', function (e) {
        if (offset != 0) {
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

    if (offset == 0 || offset == undefined) {
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

function enterKey(event) {
    if (event.keyCode == 13) {
        document.getElementById('data').scrollIntoView();
        return getFirstRestaurantPage();
    }
}