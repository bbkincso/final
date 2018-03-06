<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="sitemap.aspx.cs" Inherits="sitemap" %>

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
		
		
		
		<div class="container">
		
			<h2 id="sitemapTitle">Ellen's Bed &amp; Breakfast Sitemap</h2>
			
			<p id="demo"></p>
			
			<div id="Smap">
			
				<div id="sitemap">
					<p>Sitemap:</p>
						<ul>
							<li><a href="index.aspx">Home</a></li>
							<li><a href="about.aspx">About</a></li>
							<li><a href="Rooms.aspx">Prices</a></li>
							<li><a href="contact.aspx">Contact</a></li>
							<li><a href="testimonials.aspx">Testimonials</a></li>
							<li><a href="info.aspx">Tourist Info</a></li>
							<li><a href="faq.aspx">FAQ</a></li>
							<li><a href="sitemap.aspx">Sitemap</a></li>
                            <li><a href="admin.aspx">Admin Login</a></li>
                            <li><a href="sitemap.html">Review</a></li>
						</ul>
				</div>
				
				<div id="locationSitemap">
				<h3>Location</h3> 
				
					<div id="phone2">
				
						<a href="index.html"><img alt="Ellen's b&amp;B | logo" id="logopic3" src="img/logo2.png"></a>
						<p>Beach Ct, Galway‎, Ireland</p>
						<p><a href="contact.aspx">See our map here</a></p>
						<br />				
						<h4>Phone</h4>
						<p>Local:&nbsp;091589073 
						Int:&nbsp;+35391589073</p>
						<a href="https://www.tripadvisor.ie/"><img alt="Trip Advisor Winner 2015" 
						class="trip3" src="img/tripadvisor-2015.png"></a>
						<a href="https://www.tripadvisor.ie/">
						<img alt="Trip Advisor Winner 2016" class="trip3" src="img/tripadvisor-2016.png"></a>
					</div>
				</div>	
		
		</div>
		</div>
	
		
		
		
</asp:Content>

