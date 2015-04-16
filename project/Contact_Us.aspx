<%@ Page Language="C#" MasterPageFile="~/project/Project.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="../css/project/Project_contact_us.css">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="data" Runat="Server">
   <div id="main">
       <div id="map">
            <iframe id="display"
                 src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=75+St+Alphonsus+St,+Boston,+MA&amp;aq=0&amp;oq=75&amp;sll=53.388886,-2.354726&amp;sspn=0.029023,0.084543&amp;ie=UTF8&amp;hq=&amp;hnear=75+St+Alphonsus+St,+Boston,+Suffolk,+Massachusetts+02120&amp;t=m&amp;z=14&amp;iwloc=A&amp;output=embed">
            </iframe> 
        </div> 
       <div id="contact">
           <p id="head">Contact Us:</p>
           <p id="head1">Event Finder,<br/>75 Saint Alphonsus Street, Apt. #1605,<br/>Boston, MA - 02120<br/>
           <b id="bold">Contact No:</b> +1 857-265-9775</p>
           <b id="bold">Email ID:</b> abhik@ccs.neu.edu</p>
       </div>       
    </div>
</asp:Content>