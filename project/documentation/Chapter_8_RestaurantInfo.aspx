<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 8
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Restaurant Information Page
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <p class="content">
        When the user clicks on restaurant name in 'Search Restaurant' page, he is redirected to this page. The
        whole content of this page is generated dynamically based on the restaurant selected in previous page.
        The page is basically divided into two sections.<br/><br/>
        In the first section, all information about restaurant is displayed. The information includes image of 
        restaurant, it's name, address, contact information as well as the rating given to the restaurant. This
        section also has a link to 'Restaurant Direction' page. Clicking on the link allows user to find directions
        for reaching restaurant from given source position.<br/><br/>
        The second section display the reviews given by users to the selected restaurant. Each review consist of user
        name, his image, the date on which review was given, rating given by user as well as message
        posted by user.<br/><br/>
        Yelp API provides only 3 reviews for each restaurant. The rest of the reviews can be found on their website. Also
        the API does not provide whole content of review. Therefore, I have added the link of 'Read More' for those who want
        to read full review. The link would redirect the user on Yelp Website where he can read full review. Also, if user
        clicks on the restaurant name on this page, he would be redirected to Yelp website, where he can get additional 
        information about the restaurant.<br/><br/>
        To protect URL from misuse, I have added validation that if any parameter of URL is changed by the user, he would be
        redirected to the 'Search Restaurant' page.<br/><br/>
        A snapshot of the Restaurant Direction page when the page is loaded is as follows:</p><br/>
        <img class="image" src="../../images/Project_snapshots/Project_restaurant_info.png"/><br/><br/>
</asp:Content>