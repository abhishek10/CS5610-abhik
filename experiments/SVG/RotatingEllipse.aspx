<!DOCTYPE html>
<html lang="en">
<head>
  <title>Rorarting Ellipses</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Showing rotating Ellipses using Scalable Vector Graphics.</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<svg width="100%" height="300px">
<g id="R1" transform="translate(250 250)"> 
  <ellipse rx="100" ry="0" opacity=".3">
  <animateTransform attributeName="transform" type="rotate" dur="7s" from="0" to="360" repeatCount="indefinite"/>
  <animate attributeName="cx" dur="8s" values="-20; 220; -20" repeatCount="indefinite"/>
  <animate attributeName="ry" dur="3s" values="10; 60; 10" repeatCount="indefinite"/>
  </ellipse>
</g>
<use xlink:href="#R1" transform="rotate(72 390 150)"/>
<use xlink:href="#R1" transform="rotate(144 390 150)"/>
<use xlink:href="#R1" transform="rotate(216 390 150)"/>
<use xlink:href="#R1" transform="rotate(288 390 150)"/>
</svg>

</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;svg width=&quot;100%&quot; height=&quot;300px&quot;&gt;
&lt;g id=&quot;R1&quot; transform=&quot;translate(250 250)&quot;&gt; 
  &lt;ellipse rx=&quot;100&quot; ry=&quot;0&quot; opacity=&quot;.3&quot;&gt;
  &lt;animateTransform attributeName=&quot;transform&quot; type=&quot;rotate&quot; dur=&quot;7s&quot; from=&quot;0&quot; to=&quot;360&quot; repeatCount=&quot;indefinite&quot;/&gt;
  &lt;animate attributeName=&quot;cx&quot; dur=&quot;8s&quot; values=&quot;-20; 220; -20&quot; repeatCount=&quot;indefinite&quot;/&gt;
  &lt;animate attributeName=&quot;ry&quot; dur=&quot;3s&quot; values=&quot;10; 60; 10&quot; repeatCount=&quot;indefinite&quot;/&gt;
  &lt;/ellipse&gt;
&lt;/g&gt;
&lt;use xlink:href=&quot;#R1&quot; transform=&quot;rotate(72 390 150)&quot;/&gt;
&lt;use xlink:href=&quot;#R1&quot; transform=&quot;rotate(144 390 150)&quot;/&gt;
&lt;use xlink:href=&quot;#R1&quot; transform=&quot;rotate(216 390 150)&quot;/&gt;
&lt;use xlink:href=&quot;#R1&quot; transform=&quot;rotate(288 390 150)&quot;/&gt;
&lt;/svg&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/SVG/RotatingEllipse.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/" target="_blank">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
