<!DOCTYPE html>
<html lang="en">
<head>
  <title>Radial Gradient Ellipse</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Drawing Radial gradient Ellipse using Scalable Vector Graphics.</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<svg height="150" width="400">
  <defs>
    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
    </linearGradient>
  </defs>
  <ellipse cx="200" cy="70" rx="85" ry="55" fill="url(#grad1)" />
  <text fill="#ffffff" font-size="45" font-family="Verdana" x="150" y="86">ABHI</text>
  Sorry, your browser does not support inline SVG.
</svg>

</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;svg height=&quot;150&quot; width=&quot;400&quot;&gt;
  &lt;defs&gt;
    &lt;linearGradient id=&quot;grad1&quot; x1=&quot;0%&quot; y1=&quot;0%&quot; x2=&quot;100%&quot; y2=&quot;0%&quot;&gt;
      &lt;stop offset=&quot;0%&quot; style=&quot;stop-color:rgb(255,255,0);stop-opacity:1&quot; /&gt;
      &lt;stop offset=&quot;100%&quot; style=&quot;stop-color:rgb(255,0,0);stop-opacity:1&quot; /&gt;
    &lt;/linearGradient&gt;
  &lt;/defs&gt;
  &lt;ellipse cx=&quot;200&quot; cy=&quot;70&quot; rx=&quot;85&quot; ry=&quot;55&quot; fill=&quot;url(#grad1)&quot; /&gt;
  &lt;text fill=&quot;#ffffff&quot; font-size=&quot;45&quot; font-family=&quot;Verdana&quot; x=&quot;150&quot; y=&quot;86&quot;&gt;ABHI&lt;/text&gt;
  Sorry, your browser does not support inline SVG.
&lt;/svg&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/SVG/EllipseRadialGradient.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/" target="_blank">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
