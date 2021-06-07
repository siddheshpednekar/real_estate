<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="clgproj.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout Card</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <!-- style css -->
    <link rel="stylesheet" href="payment.css"/>
</head>
<body>
    <form id="form1" method="post" runat="server">
        <div>
            <img src="Background1.jpg" class="bgimg" alt="" />
            <div class="row">
                <div class="col-75">
                    <div class="container">
                        <div class="row">
                            <div class="col-50">
                                <h3>Payment</h3>
                                <label for="fname">Accepted Cards</label>
                                <div class="icon-container">
                                    <i class="fa fa-cc-visa" style="color:navy;"></i>
                                    <i class="fa fa-cc-amex" style="color:blue;"></i>
                                    <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                    <i class="fa fa-cc-discover" style="color:orange;"></i>

                                    <div class="amt">
                                        Amount Payable: Rs. 
                                        <asp:Label ID="Label14" CssClass="tot" runat="server" Text=""></asp:Label>
                                    </div>

                                </div>

                                <label for="cname">Name on Card</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name required*" Display="Dynamic" ControlToValidate="cname" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="cname" name="cardname" placeholder="Enter the name on your Card" runat="server"></asp:TextBox>
                                <label for="ccnum">Credit card number</label><span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Card Number required*" ControlToValidate="ccnum" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                <asp:TextBox ID="ccnum" name="cardnumber" maxlength="16" minlength="16" placeholder="Enter your Card Number" runat="server"></asp:TextBox>
                                <label for="expmonth">Expiry Month</label><span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Exp. Month required*" ControlToValidate="expmonth" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                <asp:TextBox ID="expmonth" name="expmonth" placeholder="Enter your Expiry Month" runat="server"></asp:TextBox>
                                <div class="row">
                                    <div class="col-50">
                                        <label for="expyear">Expiry Year</label><span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Exp. Year required*" ControlToValidate="expyear" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                        <asp:TextBox ID="expyear" name="expyear" placeholder="Enter your Expiry Year" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-50">
                                        <label for="cvv">CVV</label><span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV required*" ControlToValidate="cvv" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></span>
                                        <asp:TextBox ID="cvv" name="cvv" placeholder="Enter your CVV" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Continue to Book" OnClick="Button1_Click" />
                        </div>
                    </div>
                    <div class="col-25">
                        
                        <div class="container">
                            <div class="row">
                                <div class="col-50">
                                    Customer Name:<br />
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br /><hr /><br />
                                    BHK's:<br />
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br /><br />
                                    Price per Sqft:<br /> Rs. 
                                    <asp:Label ID="Label11" runat="server" Text=""></asp:Label><br /><hr /><br />
                                    Floor Number:<br />
                                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label><br /><br />
                                    <br />
                                    <br />
                                    <hr />
                                    <br />
                                    Parking:<br />
                                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label><br /><br />
                                    <br />
                                    <br />
                                    <hr />
                                    <asp:Label ID="Label13" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    
                                    
                                </div>
                                <div class="col-50">
                                    Project Name:<br />
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br /><hr /><br />
                                    Build Area:<br />
                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br /><br />
                                    Base price:<br /> Rs. 
                                    <asp:Label ID="Label5" runat="server" CssClass="tot" Text=""></asp:Label><br /><hr /><br />
                                    Floor Rise Cost:<br /> Rs. 
                                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label><br /><br />
                                    Total Floor Rise Cost:<br /> Rs. 
                                    <asp:Label ID="Label7" runat="server" CssClass="tot" Text=""></asp:Label><br /><hr /><br />          
                                    
                                    Parking Cost:<br /> Rs. 
                                    <asp:Label ID="Label9" runat="server" CssClass="tot" Text=""></asp:Label><br /><br />
                                    Total Cost:<br /> Rs. 
                                    <asp:Label ID="Label10" runat="server" CssClass="tot" Text=""></asp:Label><br /><hr /><br />

                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        </div>
    </form>
</body>
</html>
