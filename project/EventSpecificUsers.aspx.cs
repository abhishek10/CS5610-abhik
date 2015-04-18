using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class project_EventSpecificUsers : System.Web.UI.Page
{
    String eventid,imagestr,title,venue_name,startTime,address,book;
    protected void Page_Load(object sender, EventArgs e)
    {
        eventid = Request.QueryString["eventid"];
        address = Request.QueryString["address"];
        imagestr = Request.QueryString["image"];
        title = Request.QueryString["title"];
        venue_name = Request.QueryString["venue_name"];
        startTime = Request.QueryString["start"];
        book = Request.QueryString["book"];

        string y = "<div id=\"data\" class=\"data1 height\">";
        y += "<div class=\"textData\">";
        y += "<div class=\"imageDiv\">";
        y += "<img src=\""+imagestr+"\" class=\"imageSize\" alt=\"\" /></a><br />";
        y += "</div>";
        y += "<div class=\"dataAddress\"><span>";
        y += "<b style=\"color:#FFBF00;\"> Title : </b>" + title + "</br>";
        y += "<b style=\"color:#FFBF00;\"> Address : </b>" + address + "</br>";
        y += "<b style=\"color:#FFBF00;\"> Time : </b>" + startTime + "</br>";
        //y += "<a href=" + Uri.EscapeUriString(book) + " target=\"_blank\"><b>Book the Ticket</b></a><br/>";
        y += "<br/></span>";
        y += "</div></div>";

        String op = y + "<div><div class=\"table-title\"><h2>List of Users who Liked this Event</h2></div><table class=\"table-fill\"><thead><tr><th class=\"text-left\">User Name</th><th class=\"text-left\">View Details</th></tr></thead><tbody class=\"table-hover\">";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select u.firstname,u.lastname,u.uname FROM abhik.users u, abhik.likes l WHERE u.uname = l.uname AND eventid= " + eventid, con);
        con.Open();

        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                op += "<tr><td class=\"text-left\">" + reader.GetString(0) + " " + reader.GetString(1) + "</td><td class=\"text-left\">" + "<a href=\"UserProfile.aspx?userid=" + reader.GetString(2) + "&firstname=" + reader.GetString(0) + "&lastname=" + reader.GetString(1) + "\" target=\"_blank\"><b>View Profile</b></a></td></tr>";
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