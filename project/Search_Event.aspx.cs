﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class project_Search_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [System.Web.Services.WebMethod]
    public static string GetLikes(string input)
    {
        String[] param = input.Split(';');
        String op = "";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO abhik.likes values('" + param[0] +"','" + param[1] + "','" + param[2] + "','" + param[3] + "')", con);
        con.Open();
        cmd.ExecuteScalar();
        con.Close();
        return op;
    }

    [System.Web.Services.WebMethod]
    public static string UnLike(string input)
    {
        String[] param = input.Split(';');
        String op = "";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("DELETE FROM abhik.likes WHERE uname='" + param[0] + "' AND eventid='" + param[3] + "'", con);
        con.Open();
        cmd.ExecuteScalar();
        con.Close();
        return op;
    }

    [System.Web.Services.WebMethod]
    public static string CheckLike(string input)
    {
        String[] param = input.Split(';');
        String op = "";
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM abhik.likes WHERE uname='" + param[0] + "' AND eventid='" + param[1] + "'", con);
        con.Open();
        int userCount = (int)cmd.ExecuteScalar();
        con.Close();
        if (userCount == 1)
            return "Liked";
        else
            return "Unliked";

    }

    


}