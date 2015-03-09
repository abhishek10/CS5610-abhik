<!DOCTYPE html>

<html>
  <head>
      <title>Edit Map</title>

  </head>
  <body>

      <div>
    <h2>About the Experiment</h2> 
    <p>In this experiment, user gets toolbar to perform different operations on Map.</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
    <div>
         <p><a href="Edit.aspx">Demo</a></p>
       </div>
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
&lt;!DOCTYPE html&gt;

&lt;html&gt;
  &lt;head&gt;
    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width,user-scalable=no&quot;&gt;
    &lt;!--The viewport meta tag is used to improve the presentation and behavior of the samples 
      on iOS devices--&gt;
    &lt;meta name=&quot;viewport&quot; content=&quot;initial-scale=1, maximum-scale=1,user-scalable=no&quot;&gt;
    &lt;title&gt;Maps Toolbar&lt;/title&gt;
    
    &lt;link rel=&quot;stylesheet&quot; href=&quot;http://js.arcgis.com/3.13/dijit/themes/nihilo/nihilo.css&quot;&gt;
    &lt;link rel=&quot;stylesheet&quot; href=&quot;http://js.arcgis.com/3.13/esri/css/esri.css&quot;&gt;
    &lt;!-- &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;gmap.css&quot; /&gt; --&gt;
          &lt;style&gt;
      html, body, #mainWindow {
        font-family: sans-serif; 
        height: 100%; 
        width: 100%; 
      }
      html, body {
        margin: 0; 
        padding: 0;
      }
      #header {
        height: 80px; 
        overflow: auto;
        padding: 0.5em;
      }
    &lt;/style&gt;
    
    &lt;script src=&quot;http://js.arcgis.com/3.13/&quot;&gt;&lt;/script&gt;
    &lt;script type=&quot;text/javascript&quot; src=&quot;../../javascript/gmap.js&quot;&gt;&lt;/script&gt;

  &lt;/head&gt;
  &lt;body class=&quot;nihilo&quot;&gt;

  &lt;div id=&quot;mainWindow&quot; data-dojo-type=&quot;dijit/layout/BorderContainer&quot; data-dojo-props=&quot;design:&apos;headline&apos;&quot;&gt;
    &lt;div id=&quot;header&quot; data-dojo-type=&quot;dijit/layout/ContentPane&quot; data-dojo-props=&quot;region:&apos;top&apos;&quot;&gt;
      &lt;span&gt;Draw:&lt;br /&gt;&lt;/span&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Point&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Multi Point&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Line&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Polyline&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Polygon&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Freehand Polyline&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Freehand Polygon&lt;/button&gt;
      &lt;!--The Arrow,Triangle,Circle and Ellipse types all draw with the polygon symbol--&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Arrow&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Triangle&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Circle&lt;/button&gt;
      &lt;button data-dojo-type=&quot;dijit/form/Button&quot;&gt;Ellipse&lt;/button&gt;
    &lt;/div&gt;
    &lt;div id=&quot;map&quot; data-dojo-type=&quot;dijit/layout/ContentPane&quot; data-dojo-props=&quot;region:&apos;center&apos;&quot;&gt;&lt;/div&gt;
  &lt;/div&gt;

  &lt;/body&gt;
&lt;/html&gt;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/MAPS/Edit.aspx" target="_blank">View aspx Source</a> <br>
       <a href="../../fileview/Default.aspx?~/css/gmap.css" target="_blank">View css Source</a> <br>
       <a href="../../fileview/Default.aspx?~/javascript/gmap.js" target="_blank">View java script Source</a>
    <hr />
    </div>
    <hr />

    <div>
       <h2>References</h2> 
       <p><a href="https://www.developers.arcgis.com/">www.developers.arcgis.com</a></p>
    </div>
    <hr />
</body>
</html>

  </body>
</html>
 