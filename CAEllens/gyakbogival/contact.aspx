<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>
				<li><a class="active" href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
			</ul> 
		</nav>
		<img alt="Ellen's bed and breakfast" id="banner" src="img/contactBanner.jpg">
			
		<div class="container">			
		    <div id="map">
			    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2386.4342999714286!2d-9.067816184612179!3d53.26383768858987!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x485b96ff883f1bb5%3A0xe4c701b670099f94!2sBeach+Ct%2C+Galway!5e0!3m2!1shu!2sie!4v1494102802395" 
			    width="800" height="350"></iframe>
		    </div>
		
			<div id="contact">
                <h2>Contact us</h2>	
                <div id="address" style="text-align: left">
                    <h4>Address:&nbsp;Beach Ct, Galway,‎ Ireland<br />			
						Local:&nbsp;091589073 <br />
						Int:&nbsp;+35391589073</h4>	
                </div>											
			</div>
		</div>	

		
</asp:Content>


 
