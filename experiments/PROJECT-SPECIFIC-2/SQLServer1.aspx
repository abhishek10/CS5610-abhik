<!DOCTYPE html>
<html lang="en">
<head>
  <title>SQL-Server</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p>In this experiment, I learned to make SQL database connection to remote machine and perform insertion<br />
      of data into SQL tables.
  </p>
</div>
<hr />
<div>
     <h2>Demo</h2>
     <a href="../../NewReg.aspx" target="_blank">Click here</a> 
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO abhik.users values('"+fname+"','" + lname +"','"+uname+"','"+pwd+"')", con);
        con.Open();
        cmd.ExecuteScalar();
        con.Close();
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-2/SQLServer1.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
         <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
