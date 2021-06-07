<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpage.Master" CodeBehind="project_description.aspx.cs" Inherits="clgproj.project_description" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="project_description.css" />

        <div>
            <div id="bgimg" runat="server" class="bgimg" 
                style="background-image: url('tig.jpg');">
		<div class="imgcont">
		<div class="imghead"><h1><asp:Label ID="header" runat="server" Text="Label"></asp:Label></h1></div>
		<div class="imgdes"><h1><asp:Label ID="header2" runat="server" Text="Label"></asp:Label></h1>
            <p><asp:Label ID="header_desc" runat="server" Text="Label"></asp:Label>
            </p></div>	
		</div>
	</div>
	<div class="info">
		<p><asp:Label ID="auth_desc" runat="server" Text="Label"></asp:Label></p>
	</div>
	<div class="overview">
        <div class="cont1">
            <div id="contimg" runat="server" class="contimg"></div>
            <div class="contdes">
                <h1>Overview</h1><p>
<asp:Label ID="overview_description" runat="server" Text="Label"></asp:Label></p>
            </div>
        </div>
        <div id="cont2" runat="server" class="cont2"></div>
    </div>
    <div class="project-plan">
        <div class="project-title">
            <h1><asp:Label ID="plan_heading" runat="server" Text="Label"></asp:Label></h1>
            <p><asp:Label ID="plan_desc" runat="server" Text="Label"></asp:Label></p>
        </div>
        <div class="plan-img">
            <asp:Image ID="clxpln" CssClass="clxpln" runat="server" 
                Height="540px" Width="1000px" />
            
            
        </div><br />
        <center><h2>Complex Plan</h2></center>
        <div class="floor-plan">
            <asp:Image ID="flrpln" CssClass="flrpln" runat="server" 
                Height="540px" Width="1000px"/>

        </div>
        <br /><center><h2>Floor Plan</h2></center>
    </div>
    <div class="amenities">
            <h1><asp:Label ID="amenity_heading" runat="server" Text="Label"></asp:Label></h1>
            <p><asp:Label ID="amenity_desc" runat="server" Text="Label"></asp:Label></p>
        </div>
	<div class="amenity">
     <div class="amimg">
         <asp:Image ID="amenimg1" CssClass="amenimg1" runat="server" 
                Height="100%" Width="100%" />
     </div>
     <div class="amdes">

         <asp:Label ID="amenity1_desc" runat="server" Text="Label"></asp:Label>
     </div>   
    </div>
    <div class="amenity1">
     <div class="amdes1">

         <asp:Label ID="amenity2_desc" runat="server" Text="Label"></asp:Label>
     </div> 
     <div class="amimg1">
         <asp:Image ID="amenimg2" CssClass="amenimg2" runat="server" 
                Height="100%" Width="100%" />
     </div>  
    </div>
    <div class="amenity2">
     <div class="amimg2">
         <asp:Image ID="amenimg3" CssClass="amenimg3" runat="server" 
                Height="100%" Width="100%" />
    </div>
     <div class="amdes2">

         <asp:Label ID="amenity3_desc" runat="server" Text="Label"></asp:Label>
     </div>   
    </div>

    <div class="location">
        <div class="loctitle">
            <h1><asp:Label ID="location_header" runat="server" Text="Label"></asp:Label></h1>
        </div>
    <div class="locimg">
        
        <asp:Image ID="lcimg" CssClass="lcimg" runat="server" Height="540px" Width="1000px"  />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="book-btn" Text="Book" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" CssClass="btnlabel" runat="server" Text=""></asp:Label>
        <br />
        <br />
        
        </div>
    </div>
        </div>
</asp:Content>