<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fetchotp.aspx.cs" Inherits="clgproj.fetchotp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="fetchotp.css"/>
    <title>Verify OTP</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background2.jpg"/>
            <div class="box">
                <h1>Verify OTP</h1>
                <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="OTP Required" Display="Dynamic" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></span>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Verify" />
            <br />
                </div>
        </div>
    </form>
</body>
</html>
