<!DOCTYPE html>
<html lang="en">
<head>
  <title>Date</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>This experiment is about using multiple Datepicker controller on aspx page so that user <br/> 
     provide the range of dates for searching events</p>
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
          &lt;input type=&quot;text&quot; class=&quot;datepicker&quot; id=&quot;datepicker1&quot; placeholder=&quot;MM/DD/YYYY&quot;/&gt;
&lt;input type=&quot;text&quot; class=&quot;datepicker&quot; id=&quot;datepicker2&quot; placeholder=&quot;MM/DD/YYYY&quot;
           $(function () {
    $(&quot;.datepicker&quot;).datepicker();
});
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-2/Date.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">api.eventful.com/</a></p>
         <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
