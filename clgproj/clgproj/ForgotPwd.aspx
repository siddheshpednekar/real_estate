<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPwd.aspx.cs" Inherits="clgproj.ForgotPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <link rel="Stylesheet" type="text/css" href="forgotpwd.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="loginbox">
                <img src="cssimages/avtar.jpeg" alt="" class="avtar"/>
                <h1>Reset Password</h1>
                <span class="custom">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ErrorMessage="Invalid Details" Display="Dynamic" ForeColor="Red" 
                    onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <asp:RegularExpressionValidator
                        ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Invalid Email Address" ControlToValidate="TextBox1" 
                    Display="Dynamic" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </span>
                <p>Email Id   
                    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Username Required" ControlToValidate="TextBox1" Display="Dynamic" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                    </span>
                </p>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter EmailId"></asp:TextBox>
                <p>Password   
                    <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password Required" Display="Dynamic" ControlToValidate="TextBox2" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                    </span>
                </p>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                <p>Confirm Password   
                    <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Password Required" Display="Dynamic" ControlToValidate="TextBox3" 
                    ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Password and Confirm Password should match" ForeColor="Red"></asp:CompareValidator>
                    </span>
                </p>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Enter Password Again"></asp:TextBox>

                <asp:Button ID="Button1" runat="server" Text="Submit" 
                 onclick="Button1_Click" />

            </div>
        </div>
    </form>
</body>
</html>
