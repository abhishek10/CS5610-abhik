<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 12
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Show Feedbacks Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content"> 
        The access to 'Show Feedbacks' page is only possible if the user is logged in. The link to this
        page is available on 'Give Feedbacks' page. If the user is not logged in, the link gets hidden and
        user cannot see it. On clicking the link, user is able to see feedbacks provided by all the users in
        tabular format.<br/><br/>
        A snapshot of the show feedback page is as follows:</p><br/>
     <img class="image" src="../../images/Project_snapshots/Project_feedback_show.png"/><br/><br/>
</asp:Content>