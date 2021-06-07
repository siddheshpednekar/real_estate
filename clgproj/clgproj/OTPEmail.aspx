<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OTPEmail.aspx.cs" Inherits="clgproj.OTPEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Verify Email</title>
    <link rel="Stylesheet" type="text/css" href="otpemail.css"/>
</head>
<body>
    <form id="form1" runat="server">      
        <div>
            <img src="Background2.jpg"/>
            <div class="box">
                <h1>Verify Email</h1>
            <p>Email ID <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Email Id Required " ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RegularExpressionValidator></span>
            <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                </p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send OTP" />
            <br />
            
            </div>
        </div>
    </form>
</body>
</html>
