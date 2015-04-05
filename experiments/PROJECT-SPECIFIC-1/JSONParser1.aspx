<!DOCTYPE html>
<html lang="en">
<head>
  <title>JSON Parser 1</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Parse the JOSN Object to retrieve the images and links from API response which is in JSON format.</p>
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
        for (var i = 0; i &lt; data.events.event.length; i++) {

            y += &apos;&lt;div class=&quot;textData&quot;&gt;&apos;;
            y += &apos;&lt;div class=&quot;imageDiv&quot;&gt;&apos;;

            //alert(data.events.event[i].image)

            if (data.events.event[i].image == null) {

                y += &apos;&lt;img src=&quot;../../images/project/notavailable.jpg&quot; class=&quot;imageSize&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;&lt;br /&gt;&apos;;
            } else {
                //alert(data.events.event[i].image.url);
                y += &apos;&lt;img src=&apos; + data.events.event[i].image.large.url + &apos; class=&quot;imageSize&quot; alt=&quot;&quot; /&gt;&lt;/a&gt;&lt;br /&gt;&apos;;
            }
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-1/JSONParser1.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">api.eventful.com/</a></p>
    </div>
    <hr />
</body>
</html>
