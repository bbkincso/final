<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bills.aspx.cs" Inherits="messages" %>

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
                        <li><a href="Bookings.aspx">Bookings</a></li>
				        <li><a href="newBooking.aspx">New Booking</a></li>
                        <li><a href="newCustomer.aspx">New Customer</a></li>
                        <li><a class="active" href="bills.aspx">Billing Information</a></li>
                        <asp:Button ID="btnAdminLogout" runat="server" CSSClass="AdminButton" OnClick="btnAdminLogout_Click" Text="Logout" />
			        </ul> 
	            </nav>
            </div>
             <div class="adminDiv">
                <div id="billGrid">
                    <h2 class="adminH3">Billing Information:</h2>
                    <asp:GridView ID="gvBillsInfo" CSSClass="" runat="server" AutoGenerateColumns="false" OnRowDeleting="gvBillsInfo_RowDeleting">
                    <Columns>                 
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Room" HeaderText="Room" />
                        <asp:BoundField DataField="Adults" HeaderText="Adults" />
                        <asp:BoundField DataField="Children" HeaderText="Children" />
                        <asp:BoundField DataField="CheckIn" HeaderText="CheckIn" />
                        <asp:BoundField DataField="CheckOut" HeaderText="CheckOut"/>
                        <asp:BoundField DataField="Discount" HeaderText="Discount"/>
                        <asp:BoundField DataField="Price" HeaderText="Price"/>

                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>
                     </asp:GridView>
                </div>
             </div>
        </div>
    </form>
</body>
</html>
