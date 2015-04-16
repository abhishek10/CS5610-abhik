<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 3
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Data Organization
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">All the aspx pages, CSS files, javascript files and image files required in project have been organized in a systematic way.<br/><br/>
        The aspx pages are present in the main folder called 'project'. The aspx pages belonging to project documentation have been placed in 
        'documentation' folder within the main 'project' folder.<br/><br/>
        All the CSS files related to project are placed in separate folder 'project' within the main 'css' folder.<br/><br/>
        The javascript files required for project are kept in seperate folder 'project' within the main 'javascript' folder.<br/><br/>
        Similarly, all the images used in project are kept in main folder 'images' whereas images which are used in documentation are kept in
        separate folder named 'Project_snapshot' within the main 'images' folder.<br/><br/>
        Care has been taken that there are no .cs files present for any corresponding .aspx page.
    </p>
 </asp:Content>
