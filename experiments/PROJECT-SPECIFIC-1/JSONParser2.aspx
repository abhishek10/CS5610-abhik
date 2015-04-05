<!DOCTYPE html>
<html lang="en">
<head>
  <title>JSON Parser 2</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Parse the JOSN Object to retrieve the details about event from API response which is in JSON format.</p>
</div>
<hr />
<div>
     <h2>Demo</h2>
     <a href="../../project/Search_Event.aspx" target="_blank">Click here</a> 
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
            y += &apos;&lt;/div&gt;&apos;;
            y += &apos;&lt;div class=&quot;dataAddress&quot;&gt;&lt;span&gt;&apos;;
            y += &apos;&lt;b style=&quot;color:#FFBF00;&quot;&gt; Title : &lt;/b&gt;&apos; + data.events.event[i].title + &apos;&lt;/br&gt;&apos;;
            y += &apos;&lt;b style=&quot;color:#FFBF00;&quot;&gt; Venue Name : &lt;/b&gt;&apos; + data.events.event[i].venue_name + &apos;&lt;/br&gt;&apos;;
            var address = data.events.event[i].venue_address + &apos;,&lt;/br&gt;&apos; + data.events.event[i].city_name + &apos;, &apos; + data.events.event[i].region_name + &apos;, &lt;/br&gt; ZIP Code- &apos; + data.events.event[i].postal_code;
            var startTime = data.events.event[i].start_time;
            y += &apos;&lt;b style=&quot;color:#FFBF00;&quot;&gt; Address : &lt;/b&gt;&apos; + address + &apos;&lt;/br&gt;&apos;;
            y += &apos;&lt;b style=&quot;color:#FFBF00;&quot;&gt; Time : &lt;/b&gt;&apos; + startTime + &apos;&lt;/br&gt;&apos;;
            y += &apos;&lt;br/&gt;&lt;/span&gt;&apos;;
            y += &apos;&lt;/div&gt;&apos;;
            y += &apos;&lt;div class=&quot;dataTitle&quot;&gt;&lt;a href=&quot;&apos; + data.events.event[i].url + &apos;&quot; target=&quot;_blank&quot;&gt;&lt;b&gt;Book the Ticket&lt;/b&gt;&lt;/a&gt;&lt;br/&gt;&apos;;
            y += &apos;&lt;/div&gt;&apos;;
            y += &apos;&lt;/div&gt;&apos;;
            y += &apos;&lt;br/&gt;&lt;br/&gt;&lt;br/&gt;&lt;br style=&quot;clear=left;&quot;/&gt;&apos;;
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-1/JSONParser2.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">api.eventful.com/</a></p>
    </div>
    <hr />
</body>
</html>
