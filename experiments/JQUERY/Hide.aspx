<!DOCTYPE html>
<html>
<head>
    <title>Hide</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").click(function(){
        $(this).hide();
    });
});
</script>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Hide the text using JQuery when clicked on text</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<p>This is first line</p>
<p>This is second line</p>
<p>This is third line</p>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;script src=&quot;http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js&quot;&gt;&lt;/script&gt;
&lt;script&gt;
$(document).ready(function(){
    $(&quot;p&quot;).click(function(){
        $(this).hide();
    });
});
&lt;/script&gt;       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JQUERY/Hide.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
