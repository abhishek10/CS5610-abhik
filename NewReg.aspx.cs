using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static string Register(string fname, String lname, String uname, String pwd)
    {
        int userCount = 0;
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM abhik.users WHERE uname='" + uname + "'", con);
        con.Open();
        userCount = (int)cmd.ExecuteScalar();

        if (userCount > 0)
        {
            con.Close();
            return "Failure";
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("INSERT INTO abhik.users values('" + fname + "','" + lname + "','" + uname + "','" + pwd + "')", con);
            cmd2.ExecuteScalar();
            con.Close();
        }
        return "Successful";
    }


}