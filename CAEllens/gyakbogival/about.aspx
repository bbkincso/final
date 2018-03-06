<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="aboutEllens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a class="active" href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>
				<li><a href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
			</ul> 
		</nav>

    <img alt="Ellen's bed and breakfast" id="banner" src="img/aboutBanner.jpg">
		
		
		<div class="container">
			<h2>About Ellen's B&amp;B </h2>
			<div id="about">
				
				<div id="ellensHouse">
			
					
					<img id="ellensHouse-pic" alt="Ellen's|B&amp;B" src="img/house-s.jpg">
					<p id="p1">First off all we would like to thank you for viewing our website. 
					If you have any questions or would like to make a booking feel free to contact us any time.</p>
					<br /><p>Ellen's  Bed and Breakfast is set close to the heart of the world famous tourist centre of Galway, Ireland. It is
					ideally located for those wishing to discover the area's attractions. We invite you to come and  enjoy our hospitality as well as
					the far-famed beauty of the Galway area itself.It is close to Eyre Square Shopping Centre, three sandy beaches, spectacular costal walks.
					All rooms are en-suite with T.V. and complimentary tea and coffee making facilities. 
					There is a free off street car park for our guests.
					
					</p>
				
				</div>
			
				<div id="ellensRoom">
			
					
					<img id="ellensRoom-pic" alt="Ellen's|B&amp;B|bedroom" src="img/bedroom2.jpg">
					<p>All rooms at Ellen's are luxuriously furnished with walnut wooden floors, own their private bathrooms with full size baths, 
					separate walk-in tropical rain. Each room equipped with 32" to 40" flat TV. All rooms are non-smoking.
					Ellen's offers a variety of room types to accommodate groups, families, or couples. 
					Each bedroom offers privacy, warmth and comfort. All rooms are equipped with TV, tea / coffee making facilities and hairdryers.
					To start your day enjoy  an amazing healthy breakfast on our beautiful patio area.
					Full breakfast is served from 7.30am weekdays and 7am weekends.
					While you plan your day, we are happy to assist you in planning to see the 
					sights and attractions of Galway City and County and have plenty of local information and knowledge to share.
					
					
					</p>
					
				</div>			
				
			</div>
		
			<div id="aboutAside">
		
				<div id="morePics">
				<img id="buffet-pic" alt="Ellen's|B&amp;B|breakfast table" src="img/breakfastTable.jpg">
				<img id="patio-pic" alt="Ellen's|B&amp;B|patio" src="img/beautifulPatio.jpg">
			
				</div>
			
				<div id="galwayCentrePic">			
					<img id="galwayCentre" alt="Ellen's B&amp;B | Galway" src="img/galwayCityCenter.jpg">				
				</div>
			
			
			</div>
		
		</div>
</asp:Content>

