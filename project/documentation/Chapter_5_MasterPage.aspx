<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 5
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Master Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">
        The project uses two master pages, one for project [Project.master] and another for project documentation [Documentation.master]. 
        The idea was to reduce the efforts of applying CSS on every page. Below is the brief explanation of both the Master Pages. 
    </p>
    <h3 class="secondary_heading sub_heading">Project.master MasterPage</h3>
    <p class="content sub_heading">
        In the master page for my project, I have used 2 ContentPlaceHolders. One is placed inside the 
        head tag and other is placed within the body tag. I have placed the sections of header, links and footer in my master page as
        all the webpages should display this content.<br/><br/>
        The header section displays the name of my project, along with one image and a link to the login page.<br/><br/>
        The links section shows links to different webpages of my project. I have displayed the links to my Home page, search restaurant
        page, documentation, feedback page and contact us page.<br /><br/>
        The footer section simply displays the copyright content.<br/><br/>
        The snapshot of the Project MasterPage is as follows:<br/><br/>
    </p>
    <img class="image_master" src="../../images/Project_snapshots/Project_master_proj.png"/><br/><br/><br/>
    <h3 class="secondary_heading sub_heading">Documentation.master MasterPage</h3>
    <p class="content sub_heading">
        The master page for project documentation includes the common and the general code that can be used for all the documentation pages 
        such as the heading and footer. Also minor common parts to all the documents is also included in the master page.<br/><br/>
        The snapshot of the Project MasterPage is as follows:<br/><br/>
    </p>
    <img class="image_master" src="../../images/Project_snapshots/Project_master_doc.png"/><br/><br/><br/>

</asp:Content>

