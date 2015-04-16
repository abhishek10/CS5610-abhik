<%@ Page Language="C#" MasterPageFile="~/project/Project.master" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Security.Cryptography" %>

<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            message.Visible = true;
            message.Text = "Please login before continuing";
            msg_value.Enabled = false;
            email_value.Enabled = false;
            name_value.Enabled = false;
            Button1.Enabled = false;
            click.Visible = false;
           
        }
    }

    public static bool emailIsValid(string email)
    {
        string expresion;
        expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        if (Regex.IsMatch(email, expresion))
        {
            if (Regex.Replace(email, expresion, string.Empty).Length == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((name_value.Text != "") && (emailIsValid(email_value.Text)) && (msg_value.Text != ""))
        {
            
            string connectionString = ConfigurationManager.ConnectionStrings["azodpeyCS"].ConnectionString.ToString();
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("INSERT INTO azodpey.Feedback_Users VALUES (@name,@email,@message)", con);
            cmd.Parameters.Add("@name", SqlDbType.VarChar);
            cmd.Parameters["@name"].Value = name_value.Text;
            cmd.Parameters.Add("@email", SqlDbType.VarChar);
            cmd.Parameters["@email"].Value = email_value.Text;
            cmd.Parameters.Add("@message", SqlDbType.VarChar);
            cmd.Parameters["@message"].Value = msg_value.Text;
            
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            name_value.Text = "";
            msg_value.Text = "";
            email_value.Text = "";
            message.Visible = true;
            message.Text = "Thanks for giving your feedback";
        }
        else
        {
            if (name_value.Text == "")
            {
                message.Visible = true;
                message.Text = "Please enter your name";
                name_value.Focus();
            }

            if (msg_value.Text == "")
            {
                message.Visible = true;
                message.Text = "Please enter the feedback message";
                msg_value.Focus();
            }

            if (!emailIsValid(email_value.Text))
            {
                message.Visible = true;
                message.Text = "Please enter the valid email address";
                email_value.Focus();
            }
            
        }
    }

    protected void logout(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Session.Clear();
        Response.Redirect("../Login.aspx");
    }
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" type="text/css" href="../css/project/Project_feedback.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="data" runat="Server">
   <form id="feedback_form" runat="server">
                <table >
                    <caption id="title">Please provide your feedback:</caption>

                    <tr>
                        <td class="label">Enter your name:
                        </td>
                        <td class="text">
                            <asp:TextBox CssClass="text" ID="name_value" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td  class="label">Enter your e-mail address:
                        </td>
                        <td class="text">
                            <asp:TextBox CssClass="text" ID="email_value" runat="server"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td  class="label">Enter the feedback:
                        </td>
                        <td class="text">
                            <asp:TextBox CssClass="text"  ID="msg_value" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="fail">
                            <asp:Label CssClass="fail" id="message" Visible="false" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <asp:Button CssClass="button" ID="Button1" runat="server" Text="Give Feedback" OnClick="Button1_Click"/><br/><br/>
                <asp:Label CssClass="view" ID="click" Visible="true" runat="server"><a href="Feedback_Show.aspx" target="_blank">Click here to view feedbacks</a></asp:Label>
     </form>  
</asp:Content>