<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="clgproj.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="Stylesheet" type="text/css" href="login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background2.jpg"/>
            <div class="loginbox">
		<img src="cssimages/avtar.jpeg" alt="" class="avtar"/>
		<h1>Login Here</h1>
        <span class="custom">
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ErrorMessage="Invalid Details" Display="Dynamic" ForeColor="Red" 
            onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </span>
                
                <br />
                <p>Username   
              <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Username Required" ControlToValidate="TextBox1" Display="Dynamic" 
                    ForeColor="Red">*</asp:RequiredFieldValidator></span></p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username"></asp:TextBox>
			<p>Password   <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password Required" Display="Dynamic" ControlToValidate="TextBox2" 
                    ForeColor="Red">*</asp:RequiredFieldValidator></span></p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                <div id="check">Are you an Admin?</div><asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" /><br />
			<a href="OTPEmail.aspx">Forgot Password?</a><br/>
			<a href="register.aspx">Don't have an Account?</a>
                </div>
	</div>
    </form>
</body>
</html>
