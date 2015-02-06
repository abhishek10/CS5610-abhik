<html>
<head>
    <title>Current Time : </title>
<script type="text/javascript" src="../../javascript/clock.js"></script>
</head>
<body onLoad="clock()">
<div>
    <h2>About the Experiment</h2> 
    <p>Displaying Current Date and Time</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<form name="clock">
  Date:
  <input type="text" name="date" size="8" value="">
  Time:
  <input type="text" name="time" size="8" value=""><br>
</form>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
function clock() {
    var now = new Date();

    // time
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
        
    timeStr = hours;
    timeStr += ((minutes < 10) ? ":0" : ":") + minutes;
    timeStr += ((seconds < 10) ? ":0" : ":") + seconds;
        
    document.clock.time.value = timeStr;

    // date
    date = now.getDate();
    month = now.getMonth()+ 1;
    year = now.getYear();
        
    dateStr = "" + month;
    dateStr += ((date < 10) ? "/0" : "/") + date;
    dateStr += "/" + year;

    document.clock.date.value = dateStr;
        
    setTimeout("clock()", 1000);
}
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JAVASCRIPT/Clock.aspx" target="_blank">View Source</a>
    <hr />
    </div>
    <hr />

    <div>
       <h2>References</h2> 
      <p><a href="http://www.quackit.com/">www.quackit.com</a></p>
    </div>
    <hr />
</body>
</html>