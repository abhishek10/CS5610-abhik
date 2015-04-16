<%@ Page Language="C#" MasterPageFile="~/project/Project.master" %>

<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["phone"] == null || Request.QueryString["phone"].ToString() =="" || Request.QueryString["title"] == null || Request.QueryString["title"].ToString() =="" || Request.QueryString["type"] == null || Request.QueryString["type"].ToString() =="")
        {
            Response.Redirect("Search_Event.aspx");
        }
    }
</script>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/project/Project_search_restaurant.css" />
    <link rel="stylesheet" type="text/css" href="../css/project/Project_restaurant_info.css"  />
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/oauth.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/sha1.js"></script>
    <script type="text/javascript" src="../javascript/project/Project_auth_key.js"></script>
    <script type="text/javascript" src="../javascript/project/Project_restaurant_info.js"></script>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="data" Runat="Server">
     <div id="data" class="data1 height">
        <div id="textContainer">
	    </div>
    </div></asp:Content>