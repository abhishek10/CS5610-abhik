<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 11
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Give Feedback Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">
        In my project, I have provided the funcitonality of allowing the user to give feedback to my website. But the user
        needs to login into his account in order to provide feedback. I have given link to the feedback page on my project
        MasterPage.<br/><br/>
        If user clicks on the feedback link and if he is not logged in into his account, he would not be able to enter the
        feedback for website and instead he will be shown message to log in.<br/><br/>
        If logged in user clicks on the feedback link, he would be allowed to enter details such as name, email and message to
        provide feedback. Once he clicks on the 'Give Feedback' button, entry will be made in the database. The logged in user
        would also be shown a link to 'View Feedbacks' page. If user clicks on this link, he would be able to view feedback provided
        by all the users.<br/><br/>
        All the text fields present on this page have been fully validated.<br/><br/>
        A snapshot of the feedback page when user is not logged in is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_feedback_1.png"/><br/><br/><br/>
        <p class="content">A snapshot of the feedback page when user is logged in is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_feedback_2.png"/><br/><br/>
</asp:Content>


