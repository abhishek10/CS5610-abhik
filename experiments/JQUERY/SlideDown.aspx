<!DOCTYPE html>
<html>
<head>
    <title>SlideShow</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideDown("slow");
    });
});
</script>
 
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
</head>
<body>
 <div>
 <h2>About the Experiment</h2> 
  <p>Slide down (Details) using JQuery</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
<div id="flip">Slide down panel</div>
<div id="panel">Apple Inc. is an American multinational corporation headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, online services, and personal computers. Its best-known hardware products are the Mac line of computers, the iPod media player, the iPhone smartphone, and the iPad tablet computer. Its online services include iCloud, iTunes Store, and App Store. Apple's consumer software includes the OS X and iOS operating systems, the iTunes media browser, the Safari web browser, and the iLife and iWork creativity and productivity suites.</div>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;script&gt; 
$(document).ready(function(){
    $(&quot;#flip&quot;).click(function(){
        $(&quot;#panel&quot;).slideDown(&quot;slow&quot;);
    });
});
&lt;/script&gt;
 
&lt;style&gt; 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
&lt;/style&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JQUERY/SlideDown.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
