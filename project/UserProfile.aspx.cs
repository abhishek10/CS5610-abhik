using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class project_UserProfile : System.Web.UI.Page
{
    String userid,firstName,lastName;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request.QueryString["userid"];
        firstName = Request.QueryString["firstname"];
        lastName = Request.QueryString["lastname"];


        String op = "<div><div class=\"table-title\"><h2><b style=\"color:#FFBF00;\"> Name : </b>" + firstName + " " + lastName + "<br/><br/> This User has also Liked: </h2></div><table class=\"table-fill\"><thead><tr><th class=\"text-left\">Event Name</th><th class=\"text-left\">Details</th></tr></thead><tbody class=\"table-hover\">";

        //String op = y + "<div><div class=\"table-title\"><h2>"+ firstName + " " + lastName+" also Likes: </h2></div><table class=\"table-fill\"><thead><tr><th class=\"text-left\">Event Name</th><th class=\"text-left\">Details</th></tr></thead><tbody class=\"table-hover\">";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT eventname,eventlink FROM abhik.likes WHERE uname = '" + userid + "'", con);
        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                op += "<tr><td class=\"text-left\">" + reader.GetString(0) + "</td><td class=\"text-left\">" + "<a href=\"" + reader.GetString(1) + "\" target=\"_blank\"><b>Event Details</b></a></td></tr>";
            }
            op += "</tbody></table></div>";
        }
        else
        {
            op = "<div><div class=\"table-title\"><h2><b style=\"color:#FFBF00;\"> There is No data to show </b></h2></div>";
        }
        reader.Close();

        con.Close();

        eventUsers.InnerHtml = op;
    }
}