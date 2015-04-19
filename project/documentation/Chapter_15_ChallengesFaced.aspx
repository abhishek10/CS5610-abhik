<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="../../css/project/Project_documentation.css" />
    <title>Challenges</title>
</head>
<body>
    <div class="pad">
        <ul id="vertical_menu">
            <h1>Challenges Faced</h1>
            <hr />
            <hr />
            <br /><br />
            <li>
                <b>About challenges faced</b>
                <p>
                     While working on this project, I faced many challenges like-<br /><br />
					<b>1. SQL server connection:</b><br />
						SQL server connection from aspx page is something which took significant time in my project.
						Forming connection and pushing data to SQL server and retrieving data from SQL server was essential
						part of this project to form social connections. I would like to thanks Professor Rasala's webpage
						which provided valuable information about SQL server connection.<br /><br /> 
					<b>2. Asynchronous call to SQL server from javascript:</b><br />
						This issue is particularly important because when search event page used to load with all data 
						about the event from api call, I wanted to get information related to that event from database too so that I should
						know that any event is already liked by that user or not and using this information I can decide whether user should 
						get "Like" or "UnLike" button for that event. But as database call is asynchronous, I need to put workaround for 
						this issue. I made database call only after my page from website is completely loaded and then just changing the values
						of button as per data received from the database.<br /><br />
					<b>3. Parsing JSON object:</b><br />
						PArsing JSON object and getting data from it was little challenging. Because sometime in response not all fields are 
						present and you need to handle that part in code. For example if image is not present for any particular event, I need
						to check if there is no tag for image, get the constant image from my folder and show it on webpage. Sometime
						address fields are null and I need to handle that part manually in code for null values.
                </p>
            </li>
        </ul>
        <hr />
    </div>
</body>
</html>
