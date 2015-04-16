<%@ Page Language="C#" MasterPageFile="~/project/documentation/Documentation.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chapter" Runat="Server">
    CHAPTER 15
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="chapter_name" Runat="Server">
    Challenges Faced and Future Scope
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="data" Runat="Server">
    <h3 class="secondary_heading sub_heading">Challenges Faced</h3>
    <p class="content sub_sub_heading">
        <b class="sub">Cross Domain Issue:</b> Many APIs are available on the internet related to food. Not all of them 
        support cross domain requests (jsonp). JQuery POST does not support jsonp (Jquery GET supports it). This caused
        me to search for right API for an extended amount of time. I put in a lot of time and effort trying 
        different ways to overcome cross domain issue. Thankfully I found APIs that supported jsonp.<br/><br/>
        <b class="sub">JSON object fields:</b> The JSON object returned from the web service would change depending 
        on the data. Very few fields were constant and guaranteed to be present each time. I had to write a lot of 
        if-else statements to handle missing data so that javascript error is not thrown to the user.<br/><br/>
        <b class="sub">API Keys:</b> Protecting the API keys was a big issue. If stored outside the website, a way 
        was needed to retrieve them each time without storing them on a page or disclosing them in any way to the user.
        Prof. Rasala presented a really good way of storing the API keys and retrieving them. It definitely is a really 
        good solution. But since I was calling api function in javascript, it was difficult to hide the keys using the 
        KeyTools provided by Professor.<br/><br/>
        <b class="sub">Incorrect Latitude and Longitude:</b> The latitude and longitude that YELP was providing for a 
        restaurant was not accurate. So I didn't use the latitude and longitude provided by YELP. Instead I used Google
        geolocation to find the latitude and longitude by taking into consideration restaurant's address provided by Yelp
        API.
    </p>
    <h3 class="secondary_heading sub_heading">Future Scope</h3>
    <p class="content sub_sub_heading">
        To find a way to hide the api keys in javascript using KeyTools.<br/><br/>
        Using some more API's to provide funtionalities like search by recipe, search by ingredients, and integrate all 
        of it in a single website.<br/><br/>
        Adding more functionality for the user such as he can select particular restaurant and add to his favourite list.
        The whole data would be stored in database.<br/><br/>
        The overall look and feel of the website is something that can be improved.
    </p>

</asp:Content>
