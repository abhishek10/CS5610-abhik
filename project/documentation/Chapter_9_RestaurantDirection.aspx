<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 9
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Restaurant Direction Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">On the "Restaurant Information" page, there is a link to this page. Clicking on the link provides the user with 
        directions on the map to reach the selected restaurant. This page uses the Google Maps API to provide instructions to the user 
        on how to reach the restaurant. <br/><br/>
        Using the latitude and longitude, the destination is decided and cannot be changed. The reason 
        beind this page is to reach a restaurant and not any other place. If the user wishes to decide his destination, then 
        it is advisable to use Google Maps itself as providing this feature would go against the theme of the project. <br/><br/>
        The user gets to decide the place from where he wishes to start the journey and the mode of transport 
        (driving, walking, cycling, transit). User can also click on 'Get Current Location' link present on the page, which finds the 
        current position of the user using Google geolocation and displays his address in the textbox. The Google Maps API then provides 
        instructions for the best possible route to reach from start to destination.<br/><br/>
        When the user clicks on 'Get direction', the map is replaced by the directions map which shows the
        entire route from start to end points. If the start position is not specified, no map would be displayed and user would be
        asked to enter the valid start position. Also if user enters any random location which does not exist, a message of 'Unable to
        retrieve route' would be displayed to the user.<br/><br/>
        To protect URL from misuse, I have added validation that if any parameter of URL is changed by the user, he would be
        redirected to the 'Search Restaurant' page.<br/><br/>
        When the page is loaded, the heading is generated dynamically according to the restaurant selected in previous page.
        A snapshot of the Restaurant Direction page when the page is loaded is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_restaurant_direction1.png"/><br/><br/><br/>
        <p class="content">A snapshot of the Restaurant Direction page after selecting the current location  and clicking on the 'Get Direction' button is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_restaurant_direction2.png"/><br/><br/><br/>
        <p class="content">A snapshot of the Restaurant Direction page when user has not specified the start position is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_restaurant_direction3.png"/><br/><br/>
</asp:Content>
