<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 7
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Search Restaurant Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">
        This page allows user to search for restaurants at any location within the United States of America. The API used for
        searching is provided by Yelp. Whenever the page gets loaded, a call is made to the geolocation object of Google API 
        which finds the current location of user. This location becomes the default location for this page when the page
        gets loaded.<br/><br/>
        The Search Restaurant page allows user to define it's own searching criteria. User can select an option of food or restaurant
        according to his needs. According to the option selected by user, the second drop down menu gets populated with different items.
        User is also allowed to choose the city where he wants to search restaurants. He can also set the radius of search from the location
        entered by him. On clicking on the submit button, list of restaurants get populated.<br/><br/>
        For each restaurant, details such as image, name, address, rating and contact information is displayed for the user. Each page shows
        the list of 20 restaurants. If search criteria returns more than 20 restaurants, user can click on arrows to browse the next list
        of restaurants.<br/><br/>
        On clicking on any of the restaurants name, user will be redirected to 'Restaurant Information' page where the detailed
        information about the selected restaurant is displayed.<br/><br/>
        All the input fields present on this page have been validated. If user does not enter the location or if he specifies invalid
        radius for searching the restaurant, then appropriate message is displayed to the user.<br/><br/>
         A snapshot of the Search Restaurant page showing only the selection criteria is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_search_restaurant1.png"/><br/><br/><br/>
        <p class="content">A snapshot of the Search Restaurant page showing the search results is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_search_restaurant2.png"/><br/><br/><br/>
        <p class="content">A snapshot of the Search Restaurant page when user has not specified the location is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_search_restaurant3.png"/><br/><br/><br/>
        <p class="content">A snapshot of the Search Restaurant page when user has not specified the radius of search is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_search_restaurant4.png"/><br/><br/>
</asp:Content>