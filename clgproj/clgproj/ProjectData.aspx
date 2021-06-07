<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectData.aspx.cs" Inherits="clgproj.ProjectData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="projectdata.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background1.jpg" alt="" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="project_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="grid" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                
                <Columns>
                    <asp:BoundField DataField="project_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="project_id" />
                    <asp:BoundField DataField="header" HeaderText="Project Name" SortExpression="header" />
                    <asp:BoundField DataField="price_per_sq_ft" HeaderText="Price per Sqft." SortExpression="price_per_sq_ft" />
                    <asp:BoundField DataField="area_1bhk" HeaderText="1BHK Area" SortExpression="area_1bhk" />
                    <asp:BoundField DataField="area_2bhk" HeaderText="2BHK Area" SortExpression="area_2bhk" />
                    <asp:BoundField DataField="area_3bhk" HeaderText="3BHK Area" SortExpression="area_3bhk" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
                
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <HeaderStyle CssClass="header"></HeaderStyle>
				<PagerStyle CssClass="pgr"></PagerStyle>
				<RowStyle CssClass="rows"></RowStyle>
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [project_id], [header], [price_per_sq_ft], [area_1bhk], [area_2bhk], [area_3bhk], [status] FROM [project_description]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
