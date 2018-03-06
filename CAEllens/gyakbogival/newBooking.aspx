<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newBooking.aspx.cs" Inherits="newBooking" %>

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
				        <li><a class="active" href="newBooking.aspx">New Booking</a></li>
                        <li><a href="newCustomer.aspx">New Customer</a></li>
                        <li><a href="bills.aspx">Billing Information</a></li>
                        <asp:Button ID="btnAdminLogout" runat="server" CSSClass="AdminButton" OnClick="btnAdminLogout_Click" Text="Logout" />
			        </ul> 
	            </nav>
            </div>

            <div class="adminDiv">
                <h2 class="adminH3">Create new Booking:</h2>
                <div id="bookingBlock">
                    <div id="dpLists">
                        <div id="chooseCustomerAndRoom">
                            <asp:Label ID="lblCustID" runat="server" CssClass="label1" Text="Choose Customer ID:" Width="170px"></asp:Label>                       
                            &nbsp;<asp:TextBox ID="txtCustID" runat="server" Width="94px"></asp:TextBox>                        
                            <br /><asp:Label ID="lblchooseRoom" runat="server" CssClass="label1" Text="The Room Type:" Width="170px"></asp:Label>
                            <asp:DropDownList ID="ddlchooseRoom" runat="server" CssClass="dplist1" Height="20px" AutoPostBack="True" OnSelectedIndexChanged="ddlchooseRoom_SelectedIndexChanged">
                            <asp:ListItem Value="1">Tara Suite</asp:ListItem>
                            <asp:ListItem Value="2">Lir Suit</asp:ListItem>
                            <asp:ListItem Value="3">Boyne Suite</asp:ListItem>
                            <asp:ListItem Value="4">Kells Suite</asp:ListItem>
                            </asp:DropDownList>
                        </div>

					    <div id="adultsChildren">
                            <asp:Label ID="lblAdults" runat="server" CssClass="label1" Text="Number of Adults:" Width="170px"></asp:Label>
                            <asp:DropDownList ID="ddlAdults" runat="server" CssClass="dplist2">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            </asp:DropDownList>
                            <br /><asp:Label ID="lblkids" runat="server" CssClass="label1" Text="Number Of Children:" Width="170px"></asp:Label>
                            <asp:DropDownList ID="ddlkids" runat="server" CssClass="dplist2">
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            </asp:DropDownList>
					    </div>
                    </div>
                              
                    <div id="calendars">
                        <div id="cal1">
                            <asp:Label ID="lblCheckIn" runat="server" CssClass="label2" Text="Check In date:"></asp:Label>                        
                            <asp:Calendar ID="calCheckIn" runat="server" CssClass="calendar1" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#282828" Height="180px" Width="200px" OnDayRender="calCheckIn_DayRender" OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" OnSelectionChanged="calCheckIn_SelectionChanged">
                            <DayHeaderStyle BackColor="#C4E3E3" Font-Bold="True" Font-Size="7pt" />
                            <DayStyle BackColor="White" />
                            <NextPrevStyle BackColor="#85C5C5" VerticalAlign="Bottom" />
                            <OtherMonthDayStyle BackColor="White" ForeColor="#808080" />
                            <SelectedDayStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="White" />
                            <TitleStyle BackColor="#85C5C5" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="White" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#E2F1F1" />
                            </asp:Calendar> 
                        </div>
                        <div id="cal2">
                            <asp:Label ID="lblCheckOut" runat="server" CssClass="label2" Text="Check Out Date:"></asp:Label>
					        <asp:Calendar ID="calCheckOut" runat="server" CssClass="calendar2" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnDayRender="calCheckOut_DayRender" OnVisibleMonthChanged="Calendar2_VisibleMonthChanged">
                            <DayHeaderStyle BackColor="#C4E3E3" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#85C5C5" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="White" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#E2F1F1" />
                            </asp:Calendar>               
                        </div>
                    </div>
					
                    <br /><br /><asp:Button ID="btnNewBooking" runat="server" CSSClass="AdminButton" Text="Add New Booking" OnClick="btnNewBooking_Click" />
                        <h4><asp:Literal ID="ltBookingError" runat="server" /></h4>
               </div>                   
            </div>            
        </div>
    </form>
</body>
</html>
