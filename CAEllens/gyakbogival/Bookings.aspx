<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bookings.aspx.cs" Inherits="Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link runat="server" rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link runat="server" rel="stylesheet" type="text/css" href="css/style.css"/>
    <link runat="server" rel="icon" type="image/ico" href="img/icon.ico"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="side">
                <nav>
                    <a href="index.html"><img alt="Ellen's b&amp;B logo" id="logopic" src="img/logo2.png"/></a>
			        <ul>
                        <li><a href="admin.aspx">Customers</a></li>
                        <li><a class="active" href="Bookings.aspx">Bookings</a></li>
				        <li><a href="newBooking.aspx">New Booking</a></li>
                        <li><a href="newCustomer.aspx">New Customer</a></li>
                        <li><a href="bills.aspx">Billing Information</a></li>
                        <asp:Button ID="btnAdminLogout" CSSClass="AdminButton" runat="server" OnClick="btnAdminLogout_Click" Text="Logout" />
			        </ul> 
	            </nav>
            </div>
            <div class="adminDiv">
                <div id="bookingGrid">
                    <h2 class="adminH3">Our Bookings:</h2>
                    <asp:GridView ID="gvBookings" CSSClass="" runat="server" AutoGenerateColumns="false" OnRowDeleting="gvBookings_RowDeleting">
                    <Columns>
                
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HiddenField ID="hdnBookingID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "BookingID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>                 
                        <asp:BoundField DataField="Name" HeaderText="Customer Name" />
                        <asp:BoundField DataField="Email" HeaderText="Customer Email" />
                        <asp:BoundField DataField="RoomName" HeaderText="Room ID" />
                        <asp:BoundField DataField="Adults" HeaderText="Adults" />
                        <asp:BoundField DataField="Children" HeaderText="Children" />
                        <asp:BoundField DataField="BookingDate" HeaderText="BookingDate"/>

                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                    </asp:GridView>
                    <h4><asp:Literal ID="ltError" runat="server" /></h4>
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
