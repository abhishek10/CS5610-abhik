using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class project_ListUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String op = "<div><div class=\"table-title\"><h2>List of User Profiles</h2></div><table class=\"table-fill\"><thead><tr><th class=\"text-left\">User Name</th><th class=\"text-left\">View Details</th></tr></thead><tbody class=\"table-hover\">";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("select u.firstname,u.lastname,u.uname FROM abhik.users u", con);
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