<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
</head>
<body>
<div>
 <h2>About the Experiment</h2> 
  <p> Login/Logout is created for user to login to this website. Logged in user can like the events <br />
      and and can also search for other user profiles who liked that event. User is also able to check <br />
      what are all the events that particular user likes.
  </p>
</div>
<hr />
<div>
     <h2>Demo</h2>
     <a href="../../Login.aspx" target="_blank">Click here</a> 
</div>
<hr />
    <div>
       <h2>Code Snippet</h2> 
       <p>
    protected void login_check(object sender, AuthenticateEventArgs e)
    {
        string userName = LoginControl.UserName;
        string password = LoginControl.Password;
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM abhik.users WHERE uname='" + userName.Trim() + "' AND pwd='" + password.Trim() + "'", con);
        con.Open();
        int userCount = (int)cmd.ExecuteScalar();
        
        if (userCount == 1)
        {
            e.Authenticated = true;
            Session.Add("uname", userName.Trim());
            Session.Timeout = 5;
            Response.Redirect("project/Search_Event.aspx");   
                   
        }
        else
        {
             e.Authenticated = false;
        }
        con.Close();
    }
       </p>
    </div>
    <hr />

    <div>
       <h2>Link to source code</h2> 
       <a href="../../fileview/Default.aspx?~/experiments/PROJECT-SPECIFIC-2/Login.aspx" target="_blank">View Source</a>
    </div>
    <hr />

    <div>
       <h2>References</h2> 
         <p><a href="http://www.w3schools.com/">www.w3schools.com/</a></p>
    </div>
    <hr />
</body>
</html>
