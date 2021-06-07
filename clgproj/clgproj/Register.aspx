<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="clgproj.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="Stylesheet" type="text/css" href="register.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="Background2.jpg"/>
    <div class="registerbox">
		<img src="cssimages/avtar.jpeg" alt="" class="avtar" />
		<h1>Register Here</h1>
		<form action="">
			<p>Username <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Username Required" ControlToValidate="TextBox1" Display="Dynamic" 
                    ForeColor="Red">*</asp:RequiredFieldValidator><asp:CustomValidator
                    ID="CustomValidator1" runat="server" ErrorMessage="Username already taken" 
                    ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Atleast 1 alphabet and avoid dot" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red" ValidationExpression="^.*(?=.*[a-zA-Z])[a-zA-Z0-9]+[^.\!@#$%^&amp;*()_+]+$"></asp:RegularExpressionValidator></span></p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username"></asp:TextBox>
			<p>Email Id <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Email Id Required" ControlToValidate="TextBox2" Display="Dynamic" 
                    ForeColor="Red">*</asp:RequiredFieldValidator><asp:CustomValidator
                    ID="CustomValidator2" runat="server" 
                    ErrorMessage="Email Id already registered" ControlToValidate="TextBox2" 
                    ForeColor="Red" onservervalidate="CustomValidator2_ServerValidate" 
                    Display="Dynamic"></asp:CustomValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Invalid Email Address" ControlToValidate="TextBox2" 
                    Display="Dynamic" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></span></p>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" placeholder="Enter Email Id"></asp:TextBox>
			<p>Contact Number <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Contact Number Required" ControlToValidate="TextBox3" 
                    Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator><asp:CustomValidator
                    ID="CustomValidator3" runat="server" 
                    ErrorMessage="Contact Number already registered" ControlToValidate="TextBox3" 
                    Display="Dynamic" ForeColor="Red" 
                    onservervalidate="CustomValidator3_ServerValidate"></asp:CustomValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Contact Number" Display="Dynamic" 
                    ControlToValidate="TextBox3" ForeColor="Red" 
                    ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator></span></p>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Contact Number"></asp:TextBox>
			<p>Password <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Password Required" ControlToValidate="TextBox4" Display="Dynamic" 
                    ForeColor="Red">*</asp:RequiredFieldValidator></span></p>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
			<p>Confirm Password <span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Confirm Password Required" Display="Dynamic" ForeColor="Red" 
                    ControlToValidate="TextBox5">*</asp:RequiredFieldValidator><asp:CompareValidator
                    ID="CompareValidator1" runat="server" ErrorMessage="Password should match" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic" 
                    ForeColor="Red"></asp:CompareValidator></span></p>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Register" onclick="Button1_Click" />
		</form>
	</div>

    </div>
    </form>
</body>
</html>
