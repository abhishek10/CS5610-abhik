<%@ Page Language="C#" MasterPageFile="~/project/Project.master" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
    }

    protected void login_check(object sender, AuthenticateEventArgs e)
    {
        string userName = LoginControl.UserName;
        string password = LoginControl.Password;
        string connectionString = ConfigurationManager.ConnectionStrings["abhik"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM abhik.users WHERE uname='" + userName.Trim() + "' AND pwd='" + password.Trim() + "'", con);
        //cmd.Parameters.Add("@uname", SqlDbType.VarChar);
        //cmd.Parameters["@uname"].Value = userName.Trim();
        //cmd.Parameters.Add("@pass", SqlDbType.VarChar);
        //cmd.Parameters["@pass"].Value = password.Trim();
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
             //Label6.Text = "Incorrect Username or Password";
             e.Authenticated = false;
        }
        con.Close();
    }
    protected void logout(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        
        Response.Redirect("Login.aspx");
    }
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/project/Project_login.css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="data" runat="Server">
   
    <form runat="server" id="login_form">
                <asp:Login ID="LoginControl" FailureTextStyle-CssClass="fail" CheckBoxStyle-CssClass="check" LabelStyle-CssClass="label" TextBoxStyle-CssClass="text" 
                    TitleTextStyle-CssClass="title" LoginButtonStyle-CssClass="button"  runat="server"  OnAuthenticate="login_check" VisibleWhenLoggedIn="false" DisplayRememberMe="true" >
                </asp:Login>

              <asp:Label ID="Label6" runat="server"></asp:Label>

    </form>


      
</asp:Content>