using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DatabaseConnections
/// </summary>
public class DatabaseConnections
{
	public DatabaseConnections()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    [System.Web.Services.WebMethod]
    public static string GetCurrentTime(string name)
    {
        return "Hello " + name + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
    }
}