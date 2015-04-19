<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="../../css/project/Project_documentation.css" />
    <title>SQL Server</title>
</head>
<body>
    <div class="pad">
        <ul id="vertical_menu">
            <h1>SQL Server</h1>
            <hr />
            <hr />
            <br /><br />
            <li>
                <b>About SQL Server</b>
                <p>
                    In this project, I used SQL Server as my database. SQL Server is installed on CCIS machine
                    <b>MSSQL2005.development.ccs.neu.edu.</b> I am using two tables to store the
					information about the users and all the events liked by any user. Each table and its 
					purpose is as follows - <br/><br/>
					<b>1) abhik.users Table:</b><br />
						This table is used to store the information about user. It stored information like 
						first name, lastname, username and password of the user.<br/><br/>

                         Snapshot of "users" table is as follows - <br/><br/>
                         <img class="image" src="../../images/project/documentation/usersdb.png"/><br/><br/>
					<b>2) abhik.likes Table:</b><br />
						This table is used to store the information about the event liked by any user.
						When user likes any event, this tables stores the information about the user who
						liked the event, event id and event url. Also when any user unlikes the event, it
						deletes the entry from database related to that particular event for that particular 
						user.
                        <br/><br/>

                         Snapshot of "likes" table is as follows - <br/><br/>
                         <img class="image" src="../../images/project/documentation/likesdb.png"/><br/><br/>
                </p>
            </li>
        </ul>
        <hr />
    </div>
</body>
</html>
