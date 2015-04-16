// The regular expression for testing a search address
var locationRegExp = new RegExp("([-A-Za-z0-9 ,()]*)");

// The regular expression error message
var locationRegExpMessage =
    "A location must contain only letters, numbers,\n"
    + "blanks, commas, periods, hyphens, and parentheses.";


var auth = {
    //
    // Update with your auth tokens.
    //
    /**/
    consumerKey: "l155Xs_aFpj-jgEwTpWgug",
    consumerSecret: "ZJfucrRvG5lOdViTqCgzZUT7p5E",
    accessToken: "EjufCW5EnBig6hW2ffCJrdEH-TPS20OH",
    // This example is a proof of concept, for how to use the Yelp v2 API with javascript.
    // You wouldn't actually want to expose your access token secret like this in a real application.
    accessTokenSecret: "FYdD0qKGUSH2sgjMbrF2tcsA9dA",
    serviceProvider: {
        signatureMethod: "HMAC-SHA1"
    }
};

/* Creates consumer and token secret */
var accessor = {
    consumerSecret: auth.consumerSecret,
    tokenSecret: auth.accessTokenSecret
};

var message;
var parameterMap;
parameters = [];

/* Checks if location is undefined, if it is then returns a default
    location i.e. boston */
function pushLocation(location) {
    if (location == undefined) {
        return 'Boston';
    } else {
        return location;
    }
}

/* Input Parameters: action -> which is the URL request given to yelp
    methodType -> GET or POST
    and the query parameters that must be attached to the url */
function createMessage(action, methodType, parameters) {
    var message = {
        'action': action,
        'method': methodType,
        'parameters': parameters
    };
    return message;
}

/* Creates and returns a parameters array with all the required field that needs to be send to yelp api
    to make a request call */
function pushParameters(location, val, terms) {
    parameters = [];
    parameters.push(['term', terms]);
    parameters.push(['callback', 'cb']);
    parameters.push(['limit', 20]);
    parameters.push(['offset', val]);
    parameters.push(['location', location]);
    parameters.push(['oauth_consumer_key', auth.consumerKey]);
    parameters.push(['oauth_consumer_secret', auth.consumerSecret]);
    parameters.push(['oauth_token', auth.accessToken]);
    parameters.push(['oauth_signature_method', 'HMAC-SHA1']);
    return parameters;
}

/* This is an important funcation
    The query string that appears in the url it removes each query parameter
    and if there is %20 or any other characters attached it decodes the 
    URIComponent */
function getUrlParameter(sparam) {
    var sPageUrl = window.location.search.substring(1);
    var sURLVariables = sPageUrl.split('&');
    for (var i = 0; i < sURLVariables.length; i++) {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sparam) {
            return decodeURIComponent(sParameterName[1]);
        }
    }
}