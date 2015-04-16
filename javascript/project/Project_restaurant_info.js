var phone1 = getUrlParameter('phone');
var title = getUrlParameter('title');
var category = getUrlParameter('type');

var action = "";
parameters = [];
var offset = 0;

$(document).ready(function () {
    getRestaurantPage();
});

/* Creates a message and calls the OAuth functions to create a parameterMap which
    will be passed to the yelp api to request for a specific restaurant data */

function getRestaurantPage() {
    parameters = [];
    parameters.push(['ywsid', auth.consumerKey]);

    parameters.push(['phone', phone1]);
    action = 'http://api.yelp.com/phone_search';

    //var parameters = pushParameters(location, val, 'food');
    //var parameters = pushParameters();
    //action = 'http://api.yelp.com/v2/businesses/giacomos-ristorante-boston';
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
            document.getElementById("textContainer").innerHTML = "Some Server Error, Try Again";
        },
        'success': createHTML,
    });
}

/* This creates the entire HTML div which will be seen when all the restaurants
    are fetched from the yelp API */
function createHTML(data) {
    var y = "";
    /* If the data returned from the request is not defined or is null then we inform the user
    by mentioning that no restaurants are found. */
    if (data == undefined || (data.businesses.length == 0)) {
        document.getElementById("textContainer").innerHTML = "<p>No restaurants matched your search</p>";
    } else {

        var busi = "";
        for (var i = 0; i < data.businesses.length; i++) {
            var bus = data.businesses[i];
            if (bus.name == title) {
                busi = data.businesses[i];
            }
        }

        var name = busi.name;
        var yelp_url1 = busi.url;
        var yelp_url2 = busi.mobile_url;

        var addr1 = busi.address1;
        var addr2 = busi.address2;
        var addr3 = busi.address3;
        var phone = busi.phone;
        var photo = busi.photo_url;
        var rating = busi.avg_rating;
        var ratingImg = busi.rating_img_url;
        var latitude1 = busi.latitude;
        var longitude1 = busi.longitude;

        var review_count = busi.review_count;

        var categories = busi.categories; // List
        var neighbours = busi.neighborhoods; // List
        var y = "";

        y += '<div class="textData">';
        y += '<div class="imageDiv">';
        if (photo == undefined) {
            y += '<img src=http://compass-usa.com/ContentImages/Great%20People/unavailable.png class="imageSize" alt="" /></a><br />';
        } else {
            y += '<img src=' + photo + ' class="imageSize" alt="" /></a><br />';
        }
        y += '</div>';
        y += '<div class="contentDiv">';
        y += '<a href="' + yelp_url1 + '"  target="_blank"><h3>' + name + '</h3></a>';
        y += '<img src=' + ratingImg + ' alt="" />';
        y += '<span style="font-size: 15px; color: Gray;"> (' + rating + ' rating) ' + review_count + ' reviews</span>';
        y += '<br/>';

        
        y += '<br/>';
        y += '<b style="color:#FFBF00;">Address: </b><br/>';
        y += addr1 + '<br/>';
        y += busi.city + ', ' + busi.state + ' ' + busi.zip + '<br/> ';

        if (neighbours != undefined && neighbours.length != 0) {
            y += '<br/><b style="color:#FFBF00;">Neighbourhood: </b>';
            for (var d = 0; d < neighbours.length; d++) {
                var neigh = neighbours[d];
                y += '<span>' + neigh.name + '</span>';
                y += '&nbsp;&nbsp;';
            }
            y += '<br/>';
        }

        if (phone == undefined) {
            y += '<br/><b style="color:#FFBF00;">Phone: </b>Not available currently';
        } else {
            y += '<br/><b style="color:#FFBF00;">Phone: </b>' + phone;
        }
        y += '<br/><br/>';
        y += '<a href="Restaurant_Map.aspx?title=' + name + '&phone=' + phone + '&addr=' + addr1 + '" target="_blank">To get directions, CLICK HERE</a><br/>';
        y += '</div>';
        y += '<div class="clear"></div>';
        y += '<div id="reviewContainer"><br/><br/>';
        y += '<span><h2><b style="color:#FFBF00;">Reviews: </b></h2></span>';
        y += '<br/><br/>';
        var reviewList = busi.reviews; // List
        for (var r = 0; r < reviewList.length; r++) {
            var review = reviewList[r];
            var text_excerpt = review.text_excerpt;
            var reviewUrl = review.url;
            var username = review.user_name;
            var photo_url = review.user_photo_url;
            var review_rating = review.rating;
            var rating_url = review.rating_img_url;
            var user_url = review.user_url;
            var date = review.date;

            y += '<div class="eachReviewDiv">';
            y += '<div class="reviewUserImage">';
            y += '<a href="' + user_url + '" target="_blank"><img src="' + photo_url + '"></img></a>';
            y += '</div>';
            y += '<b  style="color:#FFBF00;">Name: </b>' + username + '<br/>';
            y += '<img src="' + rating_url + '">';
            y += '<span style="font-size: 17px; color: Gray; font-family:Times New Roman; font-weight:Bold;"> (' + review_rating + ' rating) ' + date + '</span><br/>';
            
            y += text_excerpt + '...<a href="' + reviewUrl + '" target="_blank">Read More</a>';
            y += '</div>';
        }


        y += '</div>';
        y += '</div>';
        document.getElementById("textContainer").innerHTML = y;
    }
}