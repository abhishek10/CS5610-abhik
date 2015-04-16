<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 4
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    API's and WebServices Used
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">In this project, I have used Yelp API and Google Maps API. </p>
    <h3 class="secondary_heading sub_heading">Yelp API</h3>
    <p class="content sub_heading">
        I have used Yelp API to retrieve all the information about restaurants present in United States of America.
        The API provides name, photo, address, contact information, rating and reviews of different restaurants. The API allows
        us to provide search functionality which finds the list of restaurants based on category, city and radius of
        search specified.
    </p>
    <h3 class="secondary_heading sub_heading">Google Maps API</h3>
    <p class="content sub_heading">
        I have made extensive use of Google Maps API in my project. I have used google geolocation to find the 
        current location of user and accordingly display list of restaurants situated nearby. I have also 
        used geolocation to find the path from user's current location to restaurant's location. To find the path,
        I used google directions service based on the mode of travel selected by the user.
    </p>
</asp:Content>
