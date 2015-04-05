<!DOCTYPE html>
<html lang="en">
<head>
  <title>Pagination</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>All events can not be shown on single page as there can be many events and user can not scroll down all the way <br/>
     down to the end of the page, Its always better idea to provide pagination feature where each page contains some fix <br />
     number of records allowing user to search for particular event on multiple pages.   
  </p>
</div>
<hr />
<div>
     <h2>Demo</h2>
     <a href="../../project/Search_Event.aspx" target="_blank">Click here</a> 
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
function initializeRestaurantPrevNext() {
    var prevButton = $(&quot;#prevRestaurantButton&quot;);
    var nextButton = $(&quot;#nextRestaurantButton&quot;);

    $(&apos;#prevRestaurantButton&apos;).unbind(&apos;click&apos;).bind(&apos;click&apos;, function (e) {
        if (offset != 1) {
            offset = offset - 1;
            prevRestaurantPage = offset;
            getFirstRestaurantPage();
            var prevButton = $(&quot;#prevRestaurantButton&quot;);
        }
    });

    $(&apos;#nextRestaurantButton&apos;).unbind(&apos;click&apos;).bind(&apos;click&apos;, function (e) {
        offset = offset + 1;
        nextRestaurantPage = offset;
        getFirstRestaurantPage();

        var nextButton = $(&quot;#nextRestaurantButton&quot;);
    });

}

function setRestaurantHandlers() {
    var prevButton = $(&quot;#prevRestaurantButton&quot;);
    var nextButton = $(&quot;#nextRestaurantButton&quot;);
    var foodOptions = $(&quot;#categoryOptions&quot;);
    var restOptions = $(&quot;#restaurantOptions&quot;);

    if (offset == 1 || offset == undefined) {
        prevButton.removeClass();
        prevButton.addClass(&quot;hidden&quot;);
    }
    else {
        prevButton.removeClass();
        prevButton.addClass(&quot;visible&quot;);
    }

    if ((offset + 1) &lt; total) {
        nextButton.removeClass();
        nextButton.addClass(&quot;visible&quot;);
    } else {
        nextButton.removeClass();
        nextButton.addClass(&quot;hidden&quot;);
    }
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-1/Pagination.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">api.eventful.com/</a></p>
    </div>
    <hr />
</body>
</html>
