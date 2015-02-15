<!DOCTYPE html>
<html>
<head>
    <title>Hide and Show</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#hide").click(function(){
        $("p").hide();
    });
    $("#show").click(function(){
        $("p").show();
    });
});
</script>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
    <h3></h3>
    >Hide and show text using JQuery</h3>
</div>
<hr />
<div>
     <h2>Demo</h2>
<p>This is test message. Click on Hide / Show button</p>

<button id="hide">Hide</button>
<button id="show">Show</button>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;script src=&quot;http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js&quot;&gt;&lt;/script&gt;
&lt;script&gt;
$(document).ready(function(){
    $(&quot;#hide&quot;).click(function(){
        $(&quot;p&quot;).hide();
    });
    $(&quot;#show&quot;).click(function(){
        $(&quot;p&quot;).show();
    });
});
&lt;/script&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JQUERY/HideShow.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
