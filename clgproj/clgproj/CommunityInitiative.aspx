<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="CommunityInitiative.aspx.cs" Inherits="clgproj.CommunityInitiative" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<!DOCTYPE html>

<html>
<head>
    <title>Community Initiative</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="communityinitiative.css">
</head>
<body>
    <form id="form1">
        <div>
            <div class="container">
		<h1>Community Initiative</h1>
		<hr class="line-1">
		<h3 class="header1">Waste-recycling for fund generation</h3>
		<p class="p1">Old and discarded items like newspapers, magazines, plastic, brochures, pamphlets, torn files, cartons, gift boxes<br>etc. are regularly donated to an NGO. The funds gathered by the disposal of these items are used for healthcare<br>
		and education of the poor</p>
		<hr class="line-2">
		<img src="cleanliness-csr.png">
		<h3 class="header2">Cleanliness drives to support Swachh Bharat Abhiyaan</h3>
		<p class="p2">As part of contributing towards the upkeep of our surrounding<br>areas, there are dedicated efforts for carrying out the cleaning of<br>slums adjoining our project sites. Fogging for mosquito-control and<br>larvicidal control treatment, are conducted for the benefit of the<br>residents in these areas.</p>
		<hr class="line-3">
		<h3 class="header3">Electric substation in Gujarat</h3>
		<p class="p3">Set up an electric substation to serve the towns of Nakshatrana and Khedoi in Gujarat after the 2001 earthquake.</p>
		<hr class="line-4">
	</div>
        </div>
    </form>
</body>
</html>
</asp:Content>