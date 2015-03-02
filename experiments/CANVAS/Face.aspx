<!DOCTYPE html>
<html lang="en">
<head>
  <title>Clock Face</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Show Clock face using Canvas and javascript</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<canvas id="canvas" width="400" height="400"
style="background-color:#333">
</canvas>
    <script type="text/javascript" src="../../javascript/face.js"></script>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
var canvas = document.getElementById(&quot;canvas&quot;);
var ctx = canvas.getContext(&quot;2d&quot;);
var radius = canvas.height / 2;
ctx.translate(radius, radius);
radius = radius * 0.90
drawClock();

function drawClock() {
    drawFace(ctx, radius);
}

function drawFace(ctx, radius) {
    var grad;
    ctx.beginPath();
    ctx.arc(0, 0, radius, 0, 2 * Math.PI);
    ctx.fillStyle = &apos;white&apos;;
    ctx.fill();
    grad = ctx.createRadialGradient(0, 0, radius * 0.95, 0, 0, radius * 1.05);
    grad.addColorStop(0, &apos;#333&apos;);
    grad.addColorStop(0.5, &apos;white&apos;);
    grad.addColorStop(1, &apos;#333&apos;);
    ctx.strokeStyle = grad;
    ctx.lineWidth = radius * 0.1;
    ctx.stroke();
    ctx.beginPath();
    ctx.arc(0, 0, radius * 0.1, 0, 2 * Math.PI);
    ctx.fillStyle = &apos;#333&apos;;
    ctx.fill();
}
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/CANVAS/Face.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>

