<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 2
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Site Map
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">A typical user can browse the website by following the flow mentioned in diagram:</p><br/>
    <img class="image" src="../../images/Project_snapshots/Project_site_map.jpg"/><br/><br/><br/>
    <p class="content">
        The brief description of all the modules used in project is as follows:</p>
    <p class="content sub_heading">
        <b class="sub">Project_Home: </b>The Home page is the first page that user can see when he clicks on my project.<br /><br />
         <b class="sub">Search_Restaurant: </b>This page displays the list of restaurants which satisfy the criteria selected by user.<br /><br />
         <b class="sub">Restaurant_Information: </b>This page displays the detailed information of restaurant selected by user.<br/><br/>
         <b class="sub">Restaurant_Map: </b>This page displays the map showing path from selected source position to destination.<br/><br/>
         <b class="sub">Login: </b>The Login page displays the basic login form for the user. If user wants to enter the feedback, he has
                                   to first login into his account.<br/><br/>
         <b class="sub">Feedback: </b>Feedback Page allows user to enter feedback for the website. As mentioned above, he has to login first in 
                                        order to avail this feature.<br/><br/>
         <b class="sub">Feedback_Show: </b>This page allows user to see feedbacks provided by all the users in tabular format.<br/><br/>
         <b class="sub">Contact_Us: </b>This page displays the contact details of admin of the website, so that a user can contact 
                                            him in case of any doubts related to website.<br/><br/>
         <b class="sub">Documentation: </b>This page shows user the Project Documentation wherin he can find all the information about the
                                                project in detail.
    </p>
</asp:Content>