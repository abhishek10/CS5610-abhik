//var searchType = getUrlParameter("type");
//var searchLoc = getUrlParameter("loc");
//var searchCriteria = getUrlParameter("filter");
var data;

function enterKey(event) {
    if (event.keyCode == 13) {
        document.getElementById('data').scrollIntoView();
        return locationSearch();
    }
}