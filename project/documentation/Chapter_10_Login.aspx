<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 10
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Login Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">I have added the login functionality in my project using ASP.NET login control tools. The user needs to
        provide username and password in order to avail some extra features of the website. The username and password of particular
        user is stored in database. To protect the password, I have stored it in MD5 encrypted format. The validations for this page
        has been provided by the ASP.NET login control tools itself.<br/><br/>
        Once the user provides correct username and password, he would be redirected to feedback page where he can write his own feedback
        about the website as well as view the feedbacks of other users.<br/><br/>
        I have also maintained session for the user once he logs into his account. Incase of inactivity by the user for longer duration, he
        would be automatically logged out of the website after 5 minutes. Also, if the user is logged in and closes the browser, he would remain
        logged in even when the browser is opened up again, provided that the session is not timed out.<br/><br/>
        A snapshot of the login page is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_login.png"/><br/><br/>
    </asp:Content>
