<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newCustomer.aspx.cs" Inherits="newCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link runat="server" rel="stylesheet" type="text/css" href="css/reset.css"/>
		<link runat="server" rel="stylesheet" type="text/css" href="css/style.css"/>
    <link runat="server" rel="icon" type="image/ico" href="img/icon.ico"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
             <div id="side">
                <nav>             
                    <a href="index.html"><img alt="Ellen's b&amp;B logo" id="logopic" src="img/logo2.png"/></a>
			        <ul>
                        <li><a href="admin.aspx">Customers</a></li>
                        <li><a href="Bookings.aspx">Bookings</a></li>
				        <li><a href="newBooking.aspx">New Booking</a></li>							
				        <li><a class="active" href="newCustomer.aspx">New Customer</a></li>				        
                        <li><a href="bills.aspx">Billing Information</a></li>
                        <asp:Button ID="btnAdminLogout" runat="server" CSSClass="AdminButton" OnClick="btnAdminLogout_Click" Text="Logout" />
			        </ul> 
	            </nav>
            </div>
            <div class="adminDiv">
                <h2 class="adminH3">Customer Control Page:</h2>
                <h4><asp:Literal ID="ltnewCustError" runat="server" /></h4>
                <div id="custDetailsBlock">
                    <div id="custDetails">
                        <asp:Label ID="lblnewCustName" runat="server" CssClass="label1" Text="Name:" Width="85px"></asp:Label>
                        <asp:TextBox ID="txtnewCustName" runat="server"  title="Only letters" Width="150px" Height="22px"></asp:TextBox>
                        <br /><br /><asp:Label ID="lblnewCustEmail" runat="server" CssClass="label1" Text="Email:"  Width="85px"></asp:Label>
                        <asp:TextBox ID="txtnewCustEmail" runat="server"  placeholder="not updateable" onfocus="this.placeholder = ''" onblur="this.placeholder = ' not updateable'" title="example@hello.com" Width="150px" Height="22px"></asp:TextBox>
                        <br /><br /><asp:Label ID="lblnewCustPhone" runat="server" CssClass="label1" Text="Phone:" Width="85px"></asp:Label>
                        <asp:TextBox ID="txtnewCustPhone" runat="server" title="Only numbers example: 082-111-1123" Width="150px" Height="22px"></asp:TextBox>
                        <br /><br /><asp:Label ID="lblnewCustAddress" runat="server" CssClass="label1" Text="Address:" Width="85px"></asp:Label>
                        <asp:TextBox ID="txtnewCustAddress" runat="server" Width="150px" Height="22px"></asp:TextBox>
                        <br /><br /><asp:Label ID="lblnewCustPassword"  runat="server" CssClass="label1" Text="Password:" Width="85px"></asp:Label>
                        <asp:TextBox ID="txtnewPassword" runat="server" placeholder="not updateable" onfocus="this.placeholder = ''" onblur="this.placeholder = ' not updateable'" Width="150px" Height="22px"></asp:TextBox>                
                        
                        <br /><br /><br /><br /><asp:Button ID="btnnewCust" runat="server" CSSClass="AdminButton" Text="Add Customer" OnClick="btnnewCust_Click" Width="200px"/>
                    </div>

                    <div id="search" class="auto-style1">
                        <br /><br /><asp:Label ID="lblEnterEmail" runat="server" CssClass="label1" Text="Enter Email:" Width="120px"></asp:Label>
                        <asp:TextBox ID="txtSearchByEmail" runat="server" Width="150px" Height="22px"></asp:TextBox>
                        <br /><br /><br /> <asp:Button ID="btnSearchCustomer" runat="server" CSSClass="AdminButton" Text="Search" OnClick="btnSearchCustomer_Click" Width="80px" />
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdateCustomer" runat="server" CSSClass="AdminButton" Text="Update" OnClick="btnUpdateCustomer_Click" Width="80px" />                                               
                        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnDeleteCustomer" runat="server" CSSClass="AdminButton" Text="Delete" OnClick="btnDeleteCustomer_Click" Width="80px" />                                                
                        <br /><br /><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtnewCustEmail" ErrorMessage="Valid email address is required." ValidationExpression="^([a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]){1,70}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        <br /><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtnewCustPhone" ErrorMessage="Valid phone is required." ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" ForeColor="Red"></asp:RegularExpressionValidator>                  
                    </div>                   
                </div>               
               
            </div>
        </div>
    </form>
</body>
</html>
