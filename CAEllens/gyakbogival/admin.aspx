<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
                            <li><a class="active" href="admin.aspx">Customers</a></li>
                            <li><a href="Bookings.aspx">Bookings</a></li>
				            <li><a href="newBooking.aspx">New Booking</a></li>
                            <li><a href="newCustomer.aspx">New Customer</a></li>
                            <li><a href="bills.aspx">Billing Information</a></li>
                            <asp:Button ID="btnAdminLogout" CSSClass="AdminButton" runat="server" OnClick="btnAdminLogout_Click" Text="Logout" />
			            </ul> 
	                </nav>
                </div>
        
        
            <div class="adminDiv">
                <div id="contactGrid">
                    <h2 class="adminH3">Our Contacts:</h2>     
                    <asp:GridView ID="gvCustomers" CSSClass="" runat="server" AutoGenerateColumns="false">
                        <Columns>   
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HiddenField ID="hdnCustomerID" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "CustomerID") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>                 
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                            <asp:BoundField DataField="Password" HeaderText="Password"/>
                            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID"/>
                        </Columns>
                    </asp:GridView>
                    <h4><asp:Literal ID="ltError" runat="server" /></h4>
                </div>             
            </div>
        </div>
    </form>
</body>
</html>
