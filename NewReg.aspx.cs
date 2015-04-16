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
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO abhik.users values('"+fname+"','" + lname +"','"+uname+"','"+pwd+"')", con);
        con.Open();
        cmd.ExecuteScalar();
        con.Close();

        return fname + ":" + lname + ":" + uname + ":" +pwd;
    }


}