<!DOCTYPE html>
<html lang="en">
<head>
  <title>Faded Filter</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Drawing Faded Filter using Scalable Vector Graphics.</p>
</div>
<hr />
<div>
     <h2>Demo</h2>

<svg width="400" height="550">
  <defs> 
    <linearGradient id="MyGradient" gradientUnits="userSpaceOnUse" x1="100" y1="0" x2="300" y2="0"> 
      <stop offset="0" style="stop-color:#000000" /> 
      <stop offset=".33" style="stop-color:#ffffff" />       
      <stop offset=".67" style="stop-color:#ffff00" /> 
      <stop offset="1" style="stop-color:#808080" /> 
    </linearGradient> 
    <filter id="normal"> 
      <feBlend mode="normal" in="SourceGraphic" /> 
    </filter> 
    <filter id="multiply"> 
      <feBlend mode="multiply" in="SourceGraphic" /> 
    </filter> 
    <filter id="screen"> 
      <feBlend mode="screen" in="SourceGraphic" /> 
    </filter> 
    <filter id="darken"> 
      <feBlend mode="darken" in="SourceGraphic" /> 
    </filter> 
    <filter id="lighten"> 
      <feBlend mode="lighten" in="SourceGraphic" /> 
    </filter> 
  </defs> 
  <g style="enable-background:new"> 
    <rect x="40" y="20" width="300" height="450" style="fill:url(#MyGradient)" /> 
    <g style="font-size:75px;fill:#888888;fill-opacity:.6"> 
      <text x="50" y="90" filter="url(#normal)">This</text> 
      <text x="50" y="180" filter="url(#multiply)">Is</text> 
      <text x="50" y="270" filter="url(#screen)">Testing</text> 
      <text x="50" y="360" filter="url(#darken)">Of</text> 
      <text x="50" y="450" filter="url(#lighten)">SVG</text> 
    </g>
  </g> 
  Sorry, your browser does not support inline SVG.    
</svg>

</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;svg width=&quot;400&quot; height=&quot;550&quot;&gt;
  &lt;defs&gt; 
    &lt;linearGradient id=&quot;MyGradient&quot; gradientUnits=&quot;userSpaceOnUse&quot; x1=&quot;100&quot; y1=&quot;0&quot; x2=&quot;300&quot; y2=&quot;0&quot;&gt; 
      &lt;stop offset=&quot;0&quot; style=&quot;stop-color:#000000&quot; /&gt; 
      &lt;stop offset=&quot;.33&quot; style=&quot;stop-color:#ffffff&quot; /&gt;       
      &lt;stop offset=&quot;.67&quot; style=&quot;stop-color:#ffff00&quot; /&gt; 
      &lt;stop offset=&quot;1&quot; style=&quot;stop-color:#808080&quot; /&gt; 
    &lt;/linearGradient&gt; 
    &lt;filter id=&quot;normal&quot;&gt; 
      &lt;feBlend mode=&quot;normal&quot; in=&quot;SourceGraphic&quot; /&gt; 
    &lt;/filter&gt; 
    &lt;filter id=&quot;multiply&quot;&gt; 
      &lt;feBlend mode=&quot;multiply&quot; in=&quot;SourceGraphic&quot; /&gt; 
    &lt;/filter&gt; 
    &lt;filter id=&quot;screen&quot;&gt; 
      &lt;feBlend mode=&quot;screen&quot; in=&quot;SourceGraphic&quot; /&gt; 
    &lt;/filter&gt; 
    &lt;filter id=&quot;darken&quot;&gt; 
      &lt;feBlend mode=&quot;darken&quot; in=&quot;SourceGraphic&quot; /&gt; 
    &lt;/filter&gt; 
    &lt;filter id=&quot;lighten&quot;&gt; 
      &lt;feBlend mode=&quot;lighten&quot; in=&quot;SourceGraphic&quot; /&gt; 
    &lt;/filter&gt; 
  &lt;/defs&gt; 
  &lt;g style=&quot;enable-background:new&quot;&gt; 
    &lt;rect x=&quot;40&quot; y=&quot;20&quot; width=&quot;300&quot; height=&quot;450&quot; style=&quot;fill:url(#MyGradient)&quot; /&gt; 
    &lt;g style=&quot;font-size:75px;fill:#888888;fill-opacity:.6&quot;&gt; 
      &lt;text x=&quot;50&quot; y=&quot;90&quot; filter=&quot;url(#normal)&quot;&gt;This&lt;/text&gt; 
      &lt;text x=&quot;50&quot; y=&quot;180&quot; filter=&quot;url(#multiply)&quot;&gt;Is&lt;/text&gt; 
      &lt;text x=&quot;50&quot; y=&quot;270&quot; filter=&quot;url(#screen)&quot;&gt;Testing&lt;/text&gt; 
      &lt;text x=&quot;50&quot; y=&quot;360&quot; filter=&quot;url(#darken)&quot;&gt;Of&lt;/text&gt; 
      &lt;text x=&quot;50&quot; y=&quot;450&quot; filter=&quot;url(#lighten)&quot;&gt;SVG&lt;/text&gt; 
    &lt;/g&gt;
  &lt;/g&gt; 
  Sorry, your browser does not support inline SVG.    
&lt;/svg&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/SVG/Filter.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://www.w3schools.com/" target="_blank">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
