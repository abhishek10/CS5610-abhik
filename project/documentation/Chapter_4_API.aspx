<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="../../css/project/Project_documentation.css" />
    <title>API</title>
</head>
<body>
    <div class="pad">
        <ul id="vertical_menu">
            <h1>APIs</h1>
            <hr />
            <hr />
            <br /><br />
            <li>
                <b>About APIs Used: </b>
                <p>
                    This project's core functionality is dependent on APIs provided eventful api. I would like to thank 'Eventful'
                    for providing their api and giving support for the same in my Project. The project is mainly dependent on two
                    APSs.<br /><br />
                    <b>1. Eventful API :</b><br />
                    Eventful API is used to fetch the information related to different types of events at particular location
                    between particular time frame. The format of calling API is  - <br />
                    <br />
                    http://api.eventful.com/rest/events/search?...&keywords=books&location=Boston
                    <br /><br />
                    Eventful API supports different types of output format like XML, JSON, For this project I used JSON format.<br /><br />

                    <b>2. Google API :</b><br />
                    I also used google API to find current location of the user. Whenever search window gets launched, Google API
                    will find the current location of the user and will present all the Music events going to happen at user's area
                    This feature is particularly important because it is assumed that most of the time user search for the events 
                    in his/her local area and we are presenting user with the events in his/her area without any users input.
                </p>
            </li>
        </ul>
        <hr />
    </div>
</body>
</html>
