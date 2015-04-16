<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 14
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Databases Used
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">In this project, I have used database to store two tables, namely Login_Users and Feedback_Users.<br/><br/>
        In Login_Users table, I am storing username and password of each user. Password is stored in MD5 encrypted format. Because of
        this, even if someone gets acces to database, he would only see the encrypted password. When the user wants to login into his 
        account, his credentials are searched in the database and if they match with any record, then only he is able to access the
        feedback page.<br/><br/>
        In Feedback_Users table, I am storing the name, email address and message of each user who enters the feedback. I have displayed
        the whole table in 'Show Feedbacks' page.<br/><br/>
        The snapshot of Login_Users table is as follows:<br/><br/><br/>
        <img class="image" src="../../images/Project_snapshots/Project_login_table.png"/><br/><br/><br/>
        The snapshot of Feedback_Users table is as follows:<br/><br/><br/>
        <img class="image" src="../../images/Project_snapshots/Project_feedback_table.png"/><br/><br/>
    </p>
</asp:Content>