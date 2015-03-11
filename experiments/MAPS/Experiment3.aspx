<!DOCTYPE html>

<html>
  <head>
      <title>Map Legends</title>

  </head>
  <body>

      <div>
    <h2>About the Experiment</h2> 
    <p>In this experiment, different Legends are used to show the different types of data on map</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
    <div>
         <p><a href="Legend.aspx">Demo</a></p>
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
  &lt;!--The viewport meta tag is used to improve the presentation and behavior of the samples
    on iOS devices--&gt;
  &lt;meta name=&quot;viewport&quot; content=&quot;initial-scale=1, maximum-scale=1,user-scalable=no&quot;&gt;
  &lt;title&gt;Map with legend&lt;/title&gt;

  &lt;link rel=&quot;stylesheet&quot; href=&quot;http://js.arcgis.com/3.13/dijit/themes/claro/claro.css&quot;&gt;
  &lt;link rel=&quot;stylesheet&quot; href=&quot;http://js.arcgis.com/3.13/esri/css/esri.css&quot;&gt;
  &lt;script src=&quot;http://js.arcgis.com/3.13/&quot;&gt;&lt;/script&gt;

        &lt;script type=&quot;text/javascript&quot; src=&quot;../../javascript/gmap3.js&quot;&gt;&lt;/script&gt;
      &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;gmap3.css&quot; /&gt;

&lt;/head&gt;

&lt;body class=&quot;claro&quot;&gt;
&lt;!--[if IE 7]&gt;
&lt;style&gt;
  html, body {
    margin: 0;
  }
&lt;/style&gt;
&lt;![endif]--&gt;
&lt;div id=&quot;content&quot;
     data-dojo-type=&quot;dijit/layout/BorderContainer&quot;
     data-dojo-props=&quot;design:&apos;headline&apos;, gutters:true&quot;
     style=&quot;width: 100%; height: 100%; margin: 0;&quot;&gt;

  &lt;div id=&quot;rightPane&quot;
       data-dojo-type=&quot;dijit/layout/ContentPane&quot;
       data-dojo-props=&quot;region:&apos;right&apos;&quot;&gt;

    &lt;div data-dojo-type=&quot;dijit/layout/AccordionContainer&quot;&gt;
      &lt;div data-dojo-type=&quot;dijit/layout/ContentPane&quot; id=&quot;legendPane&quot;
           data-dojo-props=&quot;title:&apos;Legend&apos;, selected:true&quot;&gt;
        &lt;div id=&quot;legendDiv&quot;&gt;&lt;/div&gt;
      &lt;/div&gt;
      &lt;div data-dojo-type=&quot;dijit/layout/ContentPane&quot;
           data-dojo-props=&quot;title:&apos;Pane 2&apos;&quot;&gt;
        This pane could contain tools or additional content
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;div id=&quot;map&quot;
       data-dojo-type=&quot;dijit/layout/ContentPane&quot;
       data-dojo-props=&quot;region:&apos;center&apos;&quot;
       style=&quot;overflow:hidden;&quot;&gt;
  &lt;/div&gt;
&lt;/div&gt;
&lt;/body&gt;

&lt;/html&gt;
          
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/MAPS/Legend.aspx" target="_blank">View aspx Source</a> <br>
       <a href="../../fileview/Default.aspx?~/css/gmap3.css" target="_blank">View css Source</a> <br>
       <a href="../../fileview/Default.aspx?~/javascript/gmap3.js" target="_blank">View java script Source</a>
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
 