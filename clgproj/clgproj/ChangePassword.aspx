<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="clgproj.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <link rel="Stylesheet" type="text/css" href="changepwd.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background2.jpg"/>
            <div class="box">
            
            <p> New Password <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Required" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox></p>
            <br />
            <p>Confirm Password<span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Confirm Password Required" Display="Dynamic" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password must match" ControlToCompare="TextBox1" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:CompareValidator></span>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></p>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
