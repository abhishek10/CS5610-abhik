<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 17
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Browser Compatibility
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
   <p class="content">The website is cross-browser compatible and viewable with minor differences that can be neglected. 
       I have tested this website in all 5 popular browsers. Ignoring minor glitches, it is working fairly well.</p>
    <h3 class="secondary_heading sub_heading">Recommended Browsers:</h3>
    <p class="content sub_sub_heading">Google Chrome<br/>Mozilla Firefox<br/>Safari<br/>Opera</p>
    <h3 class="secondary_heading sub_heading">Not Recommended Browsers:</h3>
    <p class="content sub_sub_heading">Internet Explorer</p>
    <p class="content">I have also tested the website on PC's of different screen sizes.</p>
    <h3 class="secondary_heading sub_heading">Recommended Screen Sizes:</h3>
    <p class="content sub_sub_heading">21' Mac Retina display<br/>13' Mac Retina Display<br/>1920 x 1080 pixel<br/></p>
</asp:Content>
