<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="testimonials.aspx.cs" Inherits="testimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>				
				<li><a href="contact.aspx">contact</a></li>
				<li><a class="active" href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
			</ul> 
		</nav>
		<img alt="Ellen's bed and breakfast" id="banner" src="img/contactBanner.jpg">
		
		
		
		<div class="container">
		
			<h2>Testimonials</h2>
			<div id="testimonials">
		
				
		
				<div class="customerReview">
					<img class="imgLeft" alt="Ellen's|B&amp;B|guest" src="img/guy1.jpg">
					<p>We were among Ellen's last guests for this fall. The room was great. 
					The advice for activities were detailed and helpful. 
					Oh, and breakfast was wonderful. When we left something in the room at checkout they called around town to find us!</p>
				
					<p>Greg Sullivan</p>
			
				</div>
			
				<div class="customerReview">
					<img class="imgRight" alt="Ellen's|B&amp;B|guest" src="img/girl2.jpg">
					<p>Our hosts Ellen's could not have been nicer. We were welcomed like friends. The rooms were very high standard. 
					The food was exceptional they went out of their way to accommodate my dietary requirements (which are tricky). 
					The location is perfect within walking distance of everywhere.
					I can’t wait to go back see you soon. Thank you for making our stay perfect.</p>
	
					<p>Theodora Smith</p>
				</div>
			
				<div class="customerReview">
					<img class="imgLeft" alt="Ellen's|B&amp;B|guest" src="img/girl1.jpg">
					<p>Thanks for making such a short trip so sweet. You were a big part in making us fall in love with this town. 
					Hope to see you again soon.</p>
			
					<p>Jackie Potter</p>
				</div>
			
				<div class="customerReview">
					<img class="imgRight" alt="Ellen's|B&amp;B|guest" src="img/guy2.jpg">
					<p>What a fantastic place. Thank you for all your help and wonderful advice. One of our highlights of our holiday.</p>
					<p>John Doe</p>
				</div>
		
		
			</div>
		
		</div>
		
</asp:Content>

