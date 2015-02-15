<!DOCTYPE html>
<html>
<head>
    <title>Animation using JQuery</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({left: '250px'});
    });
});
</script> 
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Animation using JQuery</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<button>Start</button>
    <br /><br /><br />
<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>
</div>
    <br /><br /><br /><br /><br />  <br /><br />
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;div&gt;
     &lt;h2&gt;Demo&lt;/h2&gt;
&lt;button&gt;Start&lt;/button&gt;
&lt;div style=&quot;background:#98bf21;height:100px;width:100px;position:absolute;&quot;&gt;&lt;/div&gt;
&lt;/div&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JQUERY/Animate.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
