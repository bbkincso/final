<%@ Page Title="Rooms" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="rooms.aspx.cs" Inherits="Default2" %>

<%--Rooms page source code--%>



<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a class="active" href="rooms.aspx">prices</a></li>
				<li><a href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
			</ul> 
	</nav>

    <img alt="Ellen's bed and breakfast" id="banner" src="img/bedBanner.jpeg">

    <div class="container">
    <h2>The Ellen's Bed and Breakfast price page</h2>
			<div id="roomDetails">	
			    <div class="columns">
				    <ul class="price">
					    <li class="header">The Tara Suite</li>	
					    <li class="grey">&euro; 30</li>					
					    <li> Single Room <br />(1 person)</li>
                        <li>1 single bed</li>
					    <li>non smoking</li>
					    <li>en-suite</li>
					    <li>central heating</li>
					    <li> iron and ironing board</li>
					    <li>hair dryer</li>
					    <li>"32" to 40" flat T.V.</li>
					    <li> tea/coffee making facilities</li>
					    <li> free Wifi</li>
					    <li>  free private off street car park</li>					
					    <li> Full breakfast</li>
					    <li>  Own private balcony.</li>
				    </ul>
			    </div>
			    <div class="columns">
				    <ul class="price">
					    <li class="header" >The Lir Suite</li>
					    <li class="grey">&euro; 40</li>
					    <li> Double Room <br />(2 people)</li>
					    <li>1 double bed</li>
					    <li>non smoking</li>
					    <li>en-suite</li>
					    <li>central heating</li>
					    <li> iron and ironing board</li>
					    <li>hair dryer</li>
					    <li>"32" to 40" flat T.V.</li>
					    <li> tea/coffee making facilities</li>
					    <li> free Wifi</li>
					    <li>  free private off street car park</li>					
					    <li> Full breakfast</li>
                        <li>  Own private balcony.</li>
				    </ul>
			    </div>
			    <div class="columns">
				    <ul class="price">
					    <li class="header">The Boyne Suite</li>
					    <li class="grey">&euro; 50</li>
					    <li> Triple Room <br />(max of 3 people)</li>
					    <li>1 double and 1 single</li>
					    <li>non smoking</li>
					    <li>en-suite</li>
					    <li>central heating</li>
					    <li> iron and ironing board</li>
					    <li>hair dryer</li>
					    <li>"32" to 40" flat T.V.</li>
					    <li>tea/coffee making facilities</li>
					    <li>free Wifi</li>
					    <li>free private off street car park</li>					
					    <li>Full breakfast</li>
                        <li>  Own private balcony.</li>
				    </ul>
			    </div>	
			    <div class="columns">
				    <ul class="price">
					    <li class="header">The Kells Suite </li>
					    <li class="grey">&euro; 60</li>
					    <li> Family Room <br />(max 4 people)</li>
					    <li>1 double and 2 single beds</li>
					    <li>non smoking</li>
					    <li>en-suite</li>
					    <li>central heating</li>
					    <li> iron and ironing board</li>
					    <li>hair dryer</li>
					    <li>"32" to 40" flat T.V.</li>
					    <li>tea/coffee making facilities</li>
					    <li>free Wifi</li>
					    <li>free private off street car park</li>					
					    <li>Full breakfast</li>	
                        <li>  Own private balcony.</li>
				    </ul>
			    </div>
			    <div id="roomsp">
				    <p>Welcome to our pricing page. Prices are per person per night. Taxes are included in rate, children discount on request. The regular check-in times are daily from 12pm-6pm.Please make the B&amp;B aware if you plan to arrive outside these hours to arrange</p>
					<p>&nbsp;</p>
			    </div>


				
				<%--<div class =" roomsdiv">--%>
		
	
				<h2>Book now</h2>
				<p>
					&nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
					</asp:ScriptManager>
					<br />
				</p>
				<link runat="server" href="css/style1.css" type="text/css" rel="stylesheet" />	
						<div class ="bookingForm3">
							<asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
								<ContentTemplate>
									&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
									<br />
									&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Step 1) Enter Your Details:" Font-Underline="True" Font-Italic="True"></asp:Label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" CssClass="textbox1" onblur="this.placeholder = 'Name (required)'" onfocus="this.placeholder = ''" placeholder="Name (required)" title="Only letters" Width="293px"></asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvName0" runat="server" ControlToValidate="txtName" ErrorMessage="*" />
									<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									
									<asp:TextBox ID="txtEmail" runat="server" CssClass="textbox1" onblur="this.placeholder = ' E-mail (required)'" onfocus="this.placeholder = ''" 
									placeholder="E-mail (required)" title="Eg: example@dbs.ie" Width="296px"></asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvEmail0" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" />
									<asp:RegularExpressionValidator ID="revEmail0" runat="server" ControlToValidate="txtEmail" ErrorMessage="Valid email required." 
										ForeColor="Red" ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$" />
									<br />
									
									. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPhoneNum" runat="server" CssClass="textbox1" onblur="this.placeholder = 'Phone Number (required)'" onfocus="this.placeholder = ''" placeholder="Phone Number (required)" title="Valid numbers only. Eg: 087-111-1111" Width="292px"></asp:TextBox>
									&nbsp;<asp:RequiredFieldValidator ID="rfvPhoneNum0" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="*" />
									<asp:RegularExpressionValidator ID="revPhoneNum0" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="Valid phone required." ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" />
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:TextBox ID="txtAddressLine1" runat="server" CssClass="textbox1" onblur="this.placeholder = ' Address (required)'" onfocus="this.placeholder = ''" placeholder="Address (required)" title="Eg: 14 Aungier Street, Dublin 2" Width="293px"></asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvAddressLine3" runat="server" ControlToValidate="txtAddressLine1" ErrorMessage="*" />
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtPass" runat="server" onblur="this.placeholder = 'Password (optional)'" onfocus="this.placeholder = ''" onkeyup="checkPasswordStrength()" placeholder="Password (optional)" Width="293px" Height="25px"></asp:TextBox>
									&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:TextBox ID="txtPass" runat="server" Width="297px"></asp:TextBox>--%><asp:Label ID="lblMessage" runat="server"></asp:Label>
									<script type="text/javascript">


	function checkPasswordStrength()
	{
		var passwordTextBox = document.getElementById("txtPass");
		var password = passwordTextBox.value;
		var specialCharacters = "!£$%^&*_@#~?";
		var passwordScore = 0;

		//txtPass.style.color = "white";

		// Checking if password contains any of the special characters special characters
		for (var i = 0; i < password.length; i++) {
			if (specialCharacters.indexOf(password.charAt(i)) > -1)
			{
				passwordScore += 20;//20 points added to password score if special char exists
				
			}
		}

		// Contains numbers
		if (/[\d]/.test(password)) {
			passwordScore += 20;
		}

		// Contains lower case letter
		if (/[a-z]/.test(password)) {
			passwordScore += 20;
		}

		// Contains upper case letter
		if (/[A-Z]/.test(password)) {
			passwordScore += 20;
		}

		if (password.length >= 8) {
			passwordScore += 20;
		}

		var strength = "";
		var backgroundColor = "";

		if (passwordScore >= 100)
		{
			strength = "Strong";
			backgroundColor = "green";
		}
		else if (passwordScore >= 80)
		{
			strength = "Medium";
			backgroundColor = "gray";
		}
		else if (passwordScore >= 60)
		{
			strength = "Weak";
			backgroundColor = "maroon";
		}
		else
		{
			strength = "Very Weak";
			backgroundColor = "red";
		}

		document.getElementById("lblMessage").innerHTML = strength;
		passwordTextBox.style.color = "white";
		passwordTextBox.style.backgroundColor = backgroundColor;
	}


</script>
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Generate Room ID" Width="147px" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<br />
									<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BettiDarraghConnectionString %>" SelectCommand="SELECT * FROM [Bookings]"></asp:SqlDataSource>
									<asp:RequiredFieldValidator ID="rfvRoom" runat="server" ControlToValidate="ddlRoomType" ErrorMessage="Room Selection Required" Font-Bold="True" Font-Size="Large" ForeColor="Red">Room Selection Required</asp:RequiredFieldValidator>
									<br />
									&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Step 2) Select Your Room:" Font-Underline="True" Font-Italic="True"></asp:Label>
									<br />
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblRoomType" runat="server" CssClass="label1" Text="Room Type:"></asp:Label>
									&nbsp;&nbsp;
									<asp:DropDownList ID="ddlRoomType" runat="server" AutoPostBack="True" CssClass="dplist1" Height="20px" 
									OnSelectedIndexChanged="ddlRoomType_SelectedIndexChanged">
										<asp:ListItem Text="Please choose room" Value="-1" />
										<asp:ListItem Text="Tara Suite" Value="1"></asp:ListItem>
										<asp:ListItem Text="Lir Suite" Value="2"></asp:ListItem>
										<asp:ListItem Text="Boyne Suite" Value="3"></asp:ListItem>
										<asp:ListItem Text="Kells Suite" Value="4"></asp:ListItem>
									</asp:DropDownList>
									<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Generate Room ID" Width="147px" />--%>&nbsp;&nbsp; ID:<asp:TextBox ID="txtRID" runat="server" Width="33px" ReadOnly="True"></asp:TextBox>
									<br />
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Label ID="lblNumOfA" runat="server" CssClass="label1" Text="Number of Adults:"></asp:Label>
									&nbsp;
									<asp:DropDownList ID="ddlnumOfAdults" runat="server" CssClass="dplist2">
										<asp:ListItem>1</asp:ListItem>
										<asp:ListItem>2</asp:ListItem>
										<asp:ListItem>3</asp:ListItem>
										<asp:ListItem Value="4"></asp:ListItem>
									</asp:DropDownList>
									&nbsp;&nbsp;
									<asp:Label ID="lblNumOfCh" runat="server" CssClass="label1" Text="Number Of Children:"></asp:Label>
									&nbsp;<asp:DropDownList ID="ddlnumOfChildren" runat="server" CssClass="dplist2">
										<asp:ListItem>0</asp:ListItem>
										<asp:ListItem>1</asp:ListItem>
										<asp:ListItem>2</asp:ListItem>
										<asp:ListItem>3</asp:ListItem>
										<asp:ListItem Value="4"></asp:ListItem>
									</asp:DropDownList>
									<br />
									<br />
									<br />
									<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BettiDarraghConnectionString %>" SelectCommand="SELECT * FROM [vwCheckRoomAvailability]"></asp:SqlDataSource>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> 
									<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Step 3) Choose Your Dates:" Font-Underline="True" Font-Italic="True"></asp:Label>
									&nbsp;<br />&nbsp;<asp:Calendar ID="calCheckin" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="calCheckin_SelectionChanged" style="margin-left: 161px" Width="359px" Caption="Ellen's Booking Calendar" OnDayRender="calCheckin_DayRender">
										<DayHeaderStyle Font-Bold="True" Font-Size="Small" ForeColor="#333333" Height="8pt" Font-Names="Old English Text MT" />
										<DayStyle BackColor="#CCCCCC" />
										<NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
										<OtherMonthDayStyle ForeColor="#999999" />
										<SelectedDayStyle BackColor="#333399" ForeColor="White" />
										<TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
										<TodayDayStyle BackColor="#999999" ForeColor="White" />
									</asp:Calendar>
									&nbsp;<asp:TextBox ID="txtCheckIn" runat="server" Height="30px" style="margin-left: 160px" Width="345px" ReadOnly="True"></asp:TextBox>
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="Checkin Date:"></asp:Label>
									&nbsp;&nbsp;<asp:RadioButton ID="rdoCheckin" runat="server" Checked="true" GroupName="DateDiff" Text="" />
									&nbsp;&nbsp;<asp:Label ID="lblIn" runat="server" Visible="False"></asp:Label>
									&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtIn" runat="server" AutoCompleteType="Notes" ReadOnly="True"></asp:TextBox>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="Checkout Date:"></asp:Label>
									&nbsp;&nbsp;<asp:RadioButton ID="rdoCheckout" runat="server" GroupName="DateDiff" Text="" />
									&nbsp;&nbsp;<asp:Label ID="lblOut" runat="server" Visible="False"></asp:Label>
									&nbsp;<asp:TextBox ID="txtOut" runat="server" ReadOnly="True"></asp:TextBox>
									&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDateCalc" runat="server"></asp:Label>
									<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:Button ID="btnShowBookings" runat="server" Height="35px" OnClick="Button4_Click1" Text="Check Availability" Width="145px" />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
									<asp:GridView ID="dgvCustomer" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" Visible="False" Width="527px" style="margin-left: 35px">
										<Columns>
											<asp:BoundField DataField="RoomName" HeaderText="RoomName" SortExpression="RoomName" />
											<asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
											<asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
											<asp:BoundField DataField="BookingDate" HeaderText="BookingDate" SortExpression="BookingDate" />
										</Columns>
										<FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
										<HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
										<PagerStyle ForeColor="#003399" HorizontalAlign="Left" BackColor="#99CCCC" />
										<RowStyle BackColor="White" ForeColor="#003399" />
										<SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
										<SortedAscendingCellStyle BackColor="#EDF6F6" />
										<SortedAscendingHeaderStyle BackColor="#0D4AC4" />
										<SortedDescendingCellStyle BackColor="#D6DFDF" />
										<SortedDescendingHeaderStyle BackColor="#002876" />
									</asp:GridView>
									&nbsp;<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br /> 
									
									
<div>
	<%--Javascript for click here proceed to checkout button--%>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="/img/blueButton.png" OnClick="ImageButton1_Click"/>

</script>
	&nbsp;To Proceed to Checkout..</div>

								
									<br />
									
									
									&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BettiDarraghConnectionString %>" SelectCommand="SELECT * FROM [Bookings]"></asp:SqlDataSource>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
								</ContentTemplate>
							</asp:UpdatePanel>

							</div>  
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br __designer:mapid="586" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br __designer:mapid="5bb" />

							</div>
				<asp:UpdatePanel ID="UpdatePanel3" runat="server">
					<ContentTemplate>
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
							<br />
						</div>
					</ContentTemplate>
				</asp:UpdatePanel>
				<p>
					<br />
					<br />
					<br />
					<br />
					<br />
	
	
	<script runat="server" type="text/c#">
		protected void btnRefresh_Click(object sender, EventArgs e)
		{
			//lblPanel.Text = "Panel refreshed at " +
			//	DateTime.Now.ToString();
		}
    </script>
</div>
	
					<br />
				</p>
				<p>
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
				</p>
				<p>
					&nbsp;</p>
			</div>
                
   </div>
	
</asp:Content>

