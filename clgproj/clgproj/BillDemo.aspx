<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="BillDemo.aspx.cs" Inherits="clgproj.BillDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<!DOCTYPE html>

<html>
   <head >
    <title></title>
    <link rel="Stylesheet" type="text/css" href="billdemo.css"/>
</head>
<body>
    <form id="form1" >
        <div>
            <br /><br />
            <img src="Background1.jpg" class="bgimg" alt="" />
            <div class="row">
                <div class="col-75">
                    <div class="container">
                        <br />&ensp;&ensp;&ensp;
                        <asp:DropDownList ID="DropDownList1" CssClass="ddl" runat="server">
                        </asp:DropDownList>&nbsp; BHK<span style="color:red">*</span>
                        &ensp;&ensp;&ensp;&ensp;
            
                        <asp:DropDownList ID="DropDownList2" CssClass="ddl" runat="server"></asp:DropDownList>&nbsp; Floor<span style="color:red">*</span>
                        &ensp;&ensp;&ensp;&ensp;

                        <asp:DropDownList ID="DropDownList5" CssClass="ddl" runat="server"></asp:DropDownList>&nbsp; Installments in yrs<span style="color:red">*</span>
                        &ensp;&ensp;&ensp;&ensp;

                        <asp:DropDownList ID="DropDownList4" CssClass="ddl" runat="server">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>&nbsp; Parking<span style="color:red">*</span>
                        &ensp;&ensp;&ensp;&ensp;
                        <asp:Button ID="Button2" runat="server" CssClass="viewdetails" Text="View Details  " OnClick="Button2_Click" />
            
                        <br />
                        <h2>Cost Calculation</h2>
                        <br />
                        <div class="row">
                            <div class="col-50">
                                Area: <asp:Label ID="Label2" runat="server" Text=""></asp:Label>&nbsp;Sqft
                                <br />
                                <br />
                                <br />
                                <br />
                                <hr />
                                <br />
                                Parking Opted:
                                <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                <br />
                                <br />
                                <hr />
                                <br />
                                Floor Rise Price: Rs.&nbsp; <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                &nbsp;<br />
                                <br />
                                <br />
                                <hr />
                                <br />
                                Total Price: Rs.&nbsp;
                                <asp:Label ID="Label9" runat="server" CssClass="tot" Text=""></asp:Label>
                                <br />
                                <br />
                                <br />
                                <hr />
                                <br />
                                Installments:
                                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                                &nbsp;Months<br />
                                <br />
                            </div>
                            <div class="col-50">
                                Price per sq.ft : Rs.&nbsp;
                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                <br />
                                <br />
                                Base Price: Rs.&nbsp;
                                <asp:Label ID="Label4" runat="server" CssClass="tot" Text=""></asp:Label>
                                <br />
                                <br />
                                <hr />
                                <br />
                                Parking Price: Rs.&nbsp;
                                <asp:Label ID="Label8" runat="server" CssClass="tot" Text=""></asp:Label>
                                <br />
                                <br />
                                <hr />
                                <br />
                                Total Floor Rise Price: Rs.&nbsp;
                                <asp:Label ID="Label6" runat="server" CssClass="tot" Text=""></asp:Label>
                                <br />
                                (floor no. * area * floor rise price)<br />
                                <br />
                                <hr />
                                <br />
                                Booking Price: Rs.&nbsp;
                                <asp:Label ID="Label10" runat="server" CssClass="tot" Text=""></asp:Label>
                                <br />
                                (0.5%)<br />
                                <br />
                                <hr />
                                <br />
                                EMI : Rs.
                                <asp:Label ID="Label12" runat="server" CssClass="tot" Text=""></asp:Label>
                                &nbsp;/month<br />
                                ((total price - booking price)/Installments)<br />
                                <br />
                                
                                <!--<asp:Label ID="Label1" runat="server"></asp:Label>
                                &nbsp;&nbsp; Total cost<br />-->
                            </div>
                        </div>
                        
                        <asp:Button ID="Button1" runat="server" CssClass="booknow" OnClick="Button1_Click" Text="Book Now" />
                        
                        <br />
                        <br />
                    </div>
                </div>
                <div class="col-25">
                    <div class="container">
                        <div class="row">
                                
                            <asp:Label ID="header" runat="server" CssClass="label" Text="Flat Plan Preview"></asp:Label> 
                            <br />
                            <br />
                            <asp:Image ID="Image1" CssClass="preimg" runat="server" />
                            <br />
                            <br />
                        </div>
                    </div>
                </div>                 
            </div>
            <br></br>
        </div>
    </form>
</body>
</html>
</asp:Content>