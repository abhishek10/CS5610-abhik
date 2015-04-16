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
    String userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        userid = Request.QueryString["userid"];


        string y = "<div id=\"data\" class=\"data1 height\">";
        y += "<div class=\"textData\">";
        y += "<div class=\"dataAddress\"><span>";
        y += "<b style=\"color:#FFBF00;\"> Title : </b>" + userid + "</br>";
        y += "<b style=\"color:#FFBF00;\"> Address : </b>" + userid + "</br>";
        y += "<b style=\"color:#FFBF00;\"> Time : </b>" + userid + "</br>";
        y += "<br/></span>";
        y += "</div></div><br /><br /><br />";



        String op = y + "<div><div class=\"table-title\"><h2>List of Users who Liked this Event</h2></div><table class=\"table-fill\"><thead><tr><th class=\"text-left\">First Name</th><th class=\"text-left\">Last Name</th></tr></thead><tbody class=\"table-hover\">";
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
            op = "URL is " + userid;
        }
        reader.Close();

        con.Close();

        eventUsers.InnerHtml = op;
    }
}