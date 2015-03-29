<!DOCTYPE html>
<html lang="en">
<head>
  <title>Location</title>
  <script type="text/javascript" src="http://api.eventful.com/js/api"></script>
  <script type="text/javascript" src="../../javascript/week8.js"></script>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Calling external web API to get Time of the event</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
    Event Name - Mamma Mia <br><br>
    <input type="button" onclick="get_Time()" value="Get Timing" /> <br>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
function get_location() {
    var oArgs = {
        app_key: &quot;MkPtkR7vPVRNxjVh&quot;,
        q: &quot;music&quot;,
        where: &quot;San Diego&quot;,
        &quot;date&quot;: &quot;2013061000-2015062000&quot;,
        page_size: 5,
        sort_order: &quot;popularity&quot;,
    };
    EVDB.API.call(&quot;/events/search&quot;, oArgs, function (oData) {
    alert(oData.events.event[0].start_time);
    });
}
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/WEBAPI/Time.aspx" target="_blank">View Source</a><br>
       <a href="../../fileview/Default.aspx?~/javascript/week8.js" target="_blank">View java script Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">www.evenful.com/</a></p>
    </div>
    <hr />
</body>
</html>