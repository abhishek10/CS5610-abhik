<!DOCTYPE html>
<html lang="en">
<head>
  <title>Web API</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>Call external event web API to get the information about the events all over the world   
  </p>
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

    var oArgs = {
        app_key: "MkPtkR7vPVRNxjVh",
        q: event,
        where: temp,
        "date": "future",
        page_size: 10,
        sort_order: "popularity",
        image_sizes: "large",
        page_number : offset,
    };

    EVDB.API.call("/events/search", oArgs, function (data) {
        createHTML(data);
    });


       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-1/WebAPI.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
        <p><a href="http://api.eventful.com/" target="_blank">api.eventful.com/</a></p>
    </div>
    <hr />
</body>
</html>
