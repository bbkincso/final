<%@ Page Title="" Language="C#" MasterPageFile="~/EllensMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <nav>
			<a href="index.html"><img alt="Ellen's b&amp;B logo" id="logopic" src="img/logo2.png"></a>
			<ul>
				<li><a href="index.aspx">home</a></li>
				<li><a href="about.aspx">about</a></li>
				<li><a href="rooms.aspx">prices</a></li>
				<li><a href="contact.aspx">contact</a></li>
				<li><a href="testimonials.aspx">testimonials</a></li>
				<li><a href="info.aspx">tourist info</a></li>
                <li><a class="active" href="login.aspx">Admin Login</a></li>

			</ul> 
	</nav>

    <div id="login">
        <div id="loginBlock">
         <h2>Please Login</h2>
            <div id="loginBlock2">
         <p>User Name:</p>
         <asp:TextBox CssClass="loginTextbox" ID="txtLoginName" runat="server" Width="380px" Height="25px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         <br/><p>Password:</p>
         <asp:TextBox CssClass="loginTextbox" ID="txtLoginPassword" runat="server" TextMode="Password" Width="380px" Height="25px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>    
         </div>
         <br/><asp:Button ID="btnLogin" CssClass="AdminButton" runat="server" OnClick="btnLogin_Click" Text="Login" />
         <h4><asp:Literal ID="ltloginError" runat="server" /></h4>
        </div>
    </div>
          
    
                

    </asp:Content>

