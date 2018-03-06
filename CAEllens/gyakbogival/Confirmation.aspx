<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

	<link href="css/styless.css" rel="stylesheet" />	
    <title></title>
</head>


<body>
    <form id="form1" runat="server">
       

		&nbsp;&nbsp;&nbsp;&nbsp;
		<div class ="centereddiv">		
				<style></style>
        		<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Franklin Gothic Book" Font-Underline="True" Text="Checkout Page" Font-Italic="True" Font-Size="Medium" ForeColor="#0066CC"></asp:Label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Personal Information:"></asp:Label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
			<br />
					&nbsp;Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtNameCon" runat="server" Width="217px" ReadOnly="True"></asp:TextBox>
			<br />
					<br />
					&nbsp;Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:TextBox ID="txtEmailCon" runat="server" Width="213px" ReadOnly="True"></asp:TextBox>
					<br />
					<br />
					&nbsp;Address:&nbsp;&nbsp;
					<asp:TextBox ID="txtAddressCon" runat="server" Width="275px" ReadOnly="True"></asp:TextBox>
					<br />
					<br />
					&nbsp;Password:&nbsp;
					<asp:TextBox ID="txtPassCon" runat="server" Width="252px" ReadOnly="True"></asp:TextBox>
					<br />
					<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Booking Details:"></asp:Label>
					<br />
			<br />
			&nbsp;Room Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtRoomCon" runat="server" ReadOnly="True" Width="171px"></asp:TextBox>
			&nbsp; 
					<br />
					<br />
					&nbsp;<asp:Label ID="Label2" runat="server" Text="RoomID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="txtRoomIDCon" runat="server" ReadOnly="True" Width="65px"></asp:TextBox>
			<br />
			<br />
			&nbsp;No of Adults:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAdultCon" runat="server" ReadOnly="True" Width="58px"></asp:TextBox>
			<br />
			<br />
			&nbsp;No of Children:&nbsp; <asp:TextBox ID="txtChildrenCon" runat="server" ReadOnly="True" Width="60px"></asp:TextBox>
			<br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
			&nbsp;Checkin Date:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtInCon" runat="server" ReadOnly="True" Width="171px"></asp:TextBox>
			<br />
			<br />
			&nbsp;Checkout Date:&nbsp;&nbsp; <asp:TextBox ID="txtOutCon" runat="server" ReadOnly="True" Width="175px"></asp:TextBox>
			<br />
			&nbsp;<br />
					&nbsp;I agree to comply with Ellens pay on arrival policy &nbsp;<asp:CheckBox ID="chbPay" runat="server" Checked="True" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:ScriptManager ID="ScriptManager1" runat="server">
					</asp:ScriptManager>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<asp:Button ID="btnSaveDetails" runat="server" Height="39px" OnClick="btnAddCustomer_Click" Text="Save These Details" Width="176px" />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OR&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Height="42px" OnClick="Button2_Click" style="margin-top: 0px" Text="Return to Booking Page" Width="189px" />
					<br />
					&nbsp;&nbsp; <asp:Label ID="lblSaveCust" runat="server" Text="Label" Visible="False"></asp:Label>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
					<br />
&nbsp;Your unique CustomerID is:&nbsp;&nbsp;<asp:TextBox ID="txtCustomerID" runat="server" ReadOnly="True" Width="67px"></asp:TextBox>
					&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Please quote this number on arrival"></asp:Label>
					<br />
			<br />
			&nbsp;Send a confirmation text message to:<asp:TextBox ID="txtPhoneCon" runat="server" ReadOnly="True" Width="168px"></asp:TextBox>
			
				&nbsp;<asp:Button ID="Button3" runat="server" Height="31px" OnClick="Button3_Click" Text="Send SMS!!" Width="101px" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
			<asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
			<br />
		</div>
		
		<%--<div class ="footer p">		
		</div>--%>
    </form>
</body>
</html>
