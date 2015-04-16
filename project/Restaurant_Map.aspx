<%@ Page Language="C#" MasterPageFile="~/project/Project.master" %>


<script runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["title"] == null || Request.QueryString["title"].ToString() =="" || Request.QueryString["phone"] == null || Request.QueryString["phone"].ToString() =="" || Request.QueryString["addr"] == null || Request.QueryString["addr"].ToString() =="")
        {
            Response.Redirect("Search_Event.aspx");
        }
    }
</script>



<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">    
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/oauth.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/sha1.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/project/Project_search_restaurant.css" />
    <link rel="stylesheet" type="text/css" href="../css/project/Project_restaurant_map.css" />
    <script type="text/javascript" src="../javascript/project/Project_auth_key.js"></script>
    <script type="text/javascript" src="../javascript/project/Project_restaurant_map.js"></script>
    <script type="text/javascript" src="../javascript/project/Project_restaurant_direction.js"></script> 
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="data" Runat="Server"> 
        <div id="title1">
        </div>
        <div id="map">
            <div id="directions">
             <div id="start">
                <form id="calculate-route1" name="calculate-route" >
                <div class="source"><label for="from">Start:</label><br /></div>
                <input type="text" id="from1" name="from1" placeholder="Enter the start location"/>
                <a id="from1-link" href="#">Click here to get current location</a>
                <div id="destination">
                </div>
                <br />             
                <div id="modes1"></div>
            </form>
          </div><br/>         
        </div>
        <div id="map-part">
	    </div>
        <div id="panel1"><div id="panel"></div></div>
        <p id="error"></p>
        <div class="clear"></div> 
      </div>              
</asp:Content>
