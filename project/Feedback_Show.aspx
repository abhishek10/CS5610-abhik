<%@ Page Language="C#" MasterPageFile="~/Project/Project.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" type="text/css" href="../css/project/Project_feedback_show.css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="data" runat="Server">      
        <form id="feedback_show_form" runat="server">
            <p id="feedback">Feedback given by all the users.</p>
        <asp:GridView ID="GridView1" CssClass="feedback_table" HeaderStyle-CssClass="header" RowStyle-CssClass="row" DataSourceID="users" runat="server" RowStyle-BackColor="#5C3317" BorderColor="#97694F" BorderWidth="1px" CellPadding="3">          
        </asp:GridView>

        <asp:SqlDataSource ID="users" runat="server" ConnectionString="<%$ ConnectionStrings:azodpeyCS %>"
            SelectCommand="SELECT * FROM azodpey.Feedback_Users"></asp:SqlDataSource>
       </form>
</asp:Content>