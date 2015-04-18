<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewReg.aspx.cs" MasterPageFile="~/project/Project.master" Inherits="NewReg" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/project/registration.css" />
    <script type="text/javascript" src="javascript/project/data_connection.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="data" runat="Server">


    <form id="form1" runat="server">
                <br /><br />
                <div id="label">First Name:* </div>
                <input type = "text" size = "25" id="firstName" autocomplete = "on" required="required"/>                               
                <br /><br />
                <div id="label">Last Name: </div>
                <input type = "text" size = "25" id="lastName" autocomplete = "on"/>                               
                <br /><br />
                <div id="label"> UserName:* </div>
                <input type = "text" size = "25" id="newUsername" autocomplete = "on" required="required"/>                               
                <br /><br />
                <div id="label">Password:* </div>
                <input type="password" size = "25" id="newPassword" autocomplete = "on" required="required"/>                               
                <br /><br />
                <div id="label">Confirm Password:* </div>
                <input type="password" size = "25" id="newConfirmPassword" autocomplete = "on" required="required"/>                               
                <br /><br />
            
            <div style="width:70%; margin:0 auto;">  
                <div id="error" style="color:red; font-size:18px"></div>
                <div id="success" style="color:yellowgreen; font-size:18px"></div>
             </div> <br />
            <div id="searchButtonDiv">
		        <input id="btnGetTime" type="button" value="Register" onclick = "register_user()" />
            </div><br /><br /><br /><br />

    </form>


  </asp:Content>  
