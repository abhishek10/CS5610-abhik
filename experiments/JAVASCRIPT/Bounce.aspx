<html>

<head>
<title>Bouncing Ball</title>
<script type="text/javascript" src="../../javascript/bounce.js"></script>
</head>

<body>

<div>
    <h2>About the Experiment</h2> 
    <p>Clicking on button calls the javascript to give effect of bouncing ball</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
    <div align="center">
        <h1>Bouncing Ball</h1>
        <IMG SRC="../../images/experiments/ball0.gif" id="ball" width="75" height="300">
        <form>
            <P><INPUT TYPE="button" ONCLICK="bounce()" VALUE=" Bounce the ball. "></P>
        </form>
   </div>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
    function bounce() {
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[0].src&quot;, 100);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[1].src&quot;, 200);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[2].src&quot;, 300);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[3].src&quot;, 400);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[4].src&quot;, 500);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[5].src&quot;, 600);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[4].src&quot;, 700);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[3].src&quot;, 800);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[2].src&quot;, 900);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[1].src&quot;, 1000);
    setTimeout(&quot;document.images[&apos;ball&apos;].src = imageArray[0].src&quot;, 1100);
}
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/JAVASCRIPT/Bounce.aspx" target="_blank">View Source</a>
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
