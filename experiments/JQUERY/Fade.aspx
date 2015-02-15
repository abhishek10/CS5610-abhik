<!DOCTYPE html>
<html>
<head>
    <title>Squares</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeIn();
        $("#div2").fadeIn("slow");
        $("#div3").fadeIn(3000);
    });
});
</script>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Displaying sqaures using JQuery</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<button>Click Me</button><br><br>

<div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;button&gt;Click Me&lt;/button&gt;&lt;br&gt;&lt;br&gt;

&lt;div id=&quot;div1&quot; style=&quot;width:80px;height:80px;display:none;background-color:red;&quot;&gt;&lt;/div&gt;&lt;br&gt;
&lt;div id=&quot;div2&quot; style=&quot;width:80px;height:80px;display:none;background-color:green;&quot;&gt;&lt;/div&gt;&lt;br&gt;
&lt;div id=&quot;div3&quot; style=&quot;width:80px;height:80px;display:none;background-color:blue;&quot;&gt;&lt;/div&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JQUERY/Fade.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
