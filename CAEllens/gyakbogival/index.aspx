<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's b&amp;B logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a class="active" href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>
				<li><a href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
                <li><a href="login.aspx">Admin Login</a></li>

			</ul> 
	</nav>

    <img alt="Ellen's bed and breakfast" id="indexBanner" src="img/house-l.jpg">

    <div class="container">
			<div id="welcome">
				<h1>Welcome to Ellen's Bed and Breakfast, Galway</h1>
					<p>Ellen's Bed and Breakfast in Galway is a modern, purpose built Galway accommodation 80 Km from Shannon
					airport and about 2-hourdrive from Dublin airport. We invite you to come and stay with us in Galway and enjoy 
					our hospitality and the far-famed beauty of the Galway area itself. 
					All rooms are en-suite with T.V. and complimentary tea and coffee making facilities. 
					There is a private off street car park.
					It is close to all of Galways amenities and activities - Eyre Square Shopping Centre, three sandy beaches, golfing, water 
					sports, horseriding to name a few! It is also an ideal location for touring Connemara, the Aran Islands and Cliffs of Moher.</p><br /><br />

					<p>Ellen's Bed and Breakfast currently holds a certificate of excellence 2015 and 2016</p>
					<p>which was awarded by
					<a href="https://www.tripadvisor.ie/">Tripadvisor. </a></p>
			</div>
						
			<div id="features">	
				<div id="featured-bed">
					<img id="bedroom-pic" alt="Ellen's B&amp;B | bedroom" src="img/bedroom2.jpg">					
					<h2 class="featuresHeading">Beautiful Bedrooms</h2>
					<p>Ellen's Bed&amp; Brekfast prides its self on its beautiful bedrooms. Ellen's offers a variety of room types...
					<a href="rooms.html"><br />more...</a></p>	
				</div>
				<div id="featured-breakfast">	
					<img id="breakfast-pic" alt="Ellen's B&amp;B | breakfast"  src="img/breakfastTable.jpg">	
					<h2 class="featuresHeading">Breakfast Buffet</h2>
					<p>Ellen's Bed and Breakfast prides its self on offering a healthy Breakfast Buffet for its guests...
					<a href="about.html"><br />more...</a></p>
				</div>
				<div id="featured-tours">
					<img id="moher-pic" alt="Ellen's B&amp;B | Cliffs of Moher" src="img/galwayCityCenter.jpg">
					<h2 class="featuresHeading">Central Location</h2>
					<p>Ellen's Bed &amp; Breakfast is ideally located for those wishing to discover the area's attractions...
					<a href="info.html"><br />more...</a></p>	
				</div>	
				<div id="featured-patio">
					<img id="galway-pic" alt="Ellen'sB&amp;B | Galway image" src="img/beautifulPatio.jpg">
					<h2 class="featuresHeading">Beautiful Patio</h2>
					<p>Start your day the prefect way and enjoy your morning coffee on our beautiful patio area.
					<a href="about.html"><br />more...</a></p>
				</div>
			</div>
					
			<div class="moreInfo">		
				<div id="Ellens">
					<h3>About Ellen's</h3>
					<img id="Ellens-pic" alt="Ellen's B&amp;B" src="img/house-s.jpg">
					<p>Galway is a vibrant colourful city, retains a very cosmopolitan atmospehere and is renowned for its
						 easygoing charm and warm welcome. Ellen's B&amp;B is ideally located for those wishing to discover the area's attractions.
						 While you plan your day, we are happy to assist you in planning to see the sights and attractions of the City and
						  County and have plenty of local information and knowledge to share.				
					<a href="about.html"><br />more...</a></p>			
				</div>
				
				<div id="services">
					<h3>Services</h3>
					<ul>
						    <li>Warm friendly service</li>
							<li>TripAdviser recommended</li>
							<li>Delicious Breakfast Buffet</li>
							<li>FREE Tea &amp; Coffee</li>
							<li>All rooms Ensuite</li>
							<li>Cable TV</li>
							<li>Central Heating</li>
							<li>hair dryers</li>
							<li>iron and ironing board</li>
							<li>Garden &amp; patio</li>
							<li>Private off street car park</li>
							<li>Local Knowledge of Attractions</li>
							<li>24-hours FREE WiFi</li>						
					</ul>
				</div>
				
				<div id="location">
				<h3>Location</h3> 				
					<div id="phone">			
						<img alt="Ellen's b&amp;B | logo" id="logopic2" src="img/logo2.png">
						<p>Beach Ct, Galway,‎ Ireland</p>
						<p><a href="contact.aspx">See our map here</a></p>			
						<h4>Phone</h4>
						<p>Local:&nbsp;091589073 <br />
						Int:&nbsp;+35391589073</p>
						<a href="https://www.tripadvisor.ie/"><img alt="Trip Advisor Winner 2015" 
						class="trip2" src="img/tripadvisor-2015.png"></a>
						<a href="https://www.tripadvisor.ie/">
						<img alt="Trip Advisor Winner 2016" class="trip2" src="img/tripadvisor-2016.png"></a>
					</div>
				</div>	
			
			</div>				
		</div>
</asp:Content>

