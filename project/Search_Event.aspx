﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search_Event.aspx.cs" Inherits="project_Search_Event" MasterPageFile="Project.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/project/Project_search_event.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script src="http://code.jquery.com/jquery-2.0.0.js"></script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/oauth.js"></script>
    <script type="text/javascript" src="http://oauth.googlecode.com/svn/code/javascript/sha1.js"></script>
    <script type="text/javascript" src="../javascript/project/Project_search_event.js"></script>
    <script type="text/javascript" src="http://api.eventful.com/js/api"></script>
    <script type="text/javascript" src="../javascript/project/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="../javascript/project/jquery-1.10.2.js"></script>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="data" Runat="Server">
    <form method="post" action="Search_Event.aspx" id="form1" onsubmit="return locationSearch()">

    <div id="searchBox">
        <div id="topSearchBox">
            <div id="headings">
                <div id="city"><p>Enter the Location:</p></div>
                <div id="categories"><p>Enter an Event Type</p></div>   
                <div id="categories"><p>Start Date</p></div>   
                <div id="categories"><p>End Date</p></div>   
                            
            </div>
            <div id="textBoxes">    
                <input type = "text" size = "25" id="locationName" placeholder="Enter Location" autocomplete = "on" name = "location" value="Boston" onkeypress="return enterKey(event)" />
                <input type = "text" size = "25" id="eventType" placeholder="Enter Event Category" autocomplete = "on" name = "eventType" value="Music" onkeypress="return enterKey(event)" /> 
                <input type="text" class="datepicker" id="datepicker1" placeholder="MM/DD/YYYY"/>
                <input type="text" class="datepicker" id="datepicker2" placeholder="MM/DD/YYYY"/>
                <div id="error"></div>
             </div>
            <div id="searchButtonDiv">
		        <input type = "submit" value = "Search" id = "searchButton" />
            </div>
        </div>     
        </div>
        <div id="data" class="data1 height">
            <p id="search">SEARCH RESULTS <br/>Click on 'Book the Ticket' link to book tickets</p>
            <div id="error2" class="error"></div>
        <div id="nav">
        <div id="prevRestaurantButton" class="hidden heightZero">
            <img class="arrow" src="../images/left_arrow.png" alt="Previous Button"/></div>
        <div id="nextRestaurantButton" class="hidden heightZero">
            <img class="arrow" src="../images/right_arrow.png" alt="Next Button"/></div>
        </div>
        <div id="totalSearch">
        </div>
        <div id="textContainer">
        </div>
        </div>
    </form>
</asp:Content>
