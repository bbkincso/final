<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>
				<li><a href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
			</ul> 
		</nav>
		<img alt="Ellen's bed and breakfast" id="banner" src="img/contactBanner.jpg">
		<script>
            		$(document).ready(function () {
                		$(document.getElementsByClassName("faq")).hide();
                		$(document.getElementsByClassName("faqh3")).click(function () {
                    		$(this).next(document.getElementsByClassName("faq")).slideToggle(500);
                		});
            		});
        	</script>
		
		<div class="container">
		
			<h2>Frequently Asked Questions</h2>
			
			<div id="FAQ">
											
					<div>
						<h3 class="faqh3">Q1. Can you give directions to the B&amp;B?</h3>
							<p class="faq">Yes, using our "Google Maps" search facility indicates your starting point and arrival destination and 
							google maps will generate directions for you.</p>
					</div>
				
					<div>
						<h3 class="faqh3">Q2. What are the check in times?</h3>
							<p class="faq">The regular check-in times are daily from 11:00am - 5:30pm. Please make the B&amp;B aware if you plan to arrive
							outside of these hours to arrange. </p>	
					</div>									

                    <div>
						<h3 class="faqh3">Q3. Disabled Persons</h3>
							<p class="faq">Premises suitable for disabled persons have been graded by Comhairle or in the past by the National 
							Rehabilitation Board. Please refer to facilities options.</p>
					</div>
					
					<div>
						<h3 class="faqh3">Q4. What are the restrictions on smoking?</h3>
							<p class="faq">There is a smoking ban in place in all areas of the B&amp;B</p>
					</div>
				
					<div>
						<h3 class="faqh3">Q5. Guide Dogs and Pets</h3>
							<p class="faq">With the exception of Guide Dogs, in the interest of hygiene pets are not allowed inside the premises. </p>
					</div>								
																	
			</div>
			
			<div id="faqLocation">
				<h3>Location</h3> 
				
					<div id="phone2">
				
						<a href="index.html"><img alt="Ellen's b&amp;B | logo" id="logopic3" src="img/logo2.png"></a>
						<p>Beach Ct, Galway,‎ Ireland</p>
						<p><a href="contact.aspx">See our map here</a></p>				
						<h4>Phone</h4>
						<p>Local:&nbsp;091589073 <br />
						Int:&nbsp;+35391589073</p>
						<a href="https://www.tripadvisor.ie/"><img alt="Trip Advisor Winner 2015" 
						class="trip3" src="img/tripadvisor-2015.png"></a>
						<a href="https://www.tripadvisor.ie/">
						<img alt="Trip Advisor Winner 2016" class="trip3" src="img/tripadvisor-2016.png"></a>
					</div>
				</div>
				
		</div>
	
</asp:Content>

