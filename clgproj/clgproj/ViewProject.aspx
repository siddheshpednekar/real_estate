<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProject.aspx.cs" Inherits="clgproj.ViewProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="viewproject.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background1.jpg" alt="" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="project_id" CssClass="grid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="project_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="project_id" />
                    <asp:BoundField DataField="header" HeaderText="Project Name" SortExpression="header" />
                    <asp:BoundField DataField="price_per_sq_ft" HeaderText="Price per Sqft." SortExpression="price_per_sq_ft" />
                    <asp:BoundField DataField="area_1bhk" HeaderText="1BHK Area" SortExpression="area_1bhk" />
                    <asp:BoundField DataField="area_2bhk" HeaderText="2BHK Area" SortExpression="area_2bhk" />
                    <asp:BoundField DataField="area_3bhk" HeaderText="3BHK Area" SortExpression="area_3bhk" />
                    <asp:BoundField DataField="no_of_floors" HeaderText="No. of Floors" SortExpression="no_of_floors" />
                    <asp:BoundField DataField="floor_rise_price" HeaderText="Floor Rise Price" SortExpression="floor_rise_price" />
                    <asp:BoundField DataField="parking_price" HeaderText="Parking Price" SortExpression="parking_price" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:HyperLink ID="hyper" Text="View Project" CssClass="hyper" NavigateUrl= '<%# String.Format("{0}","project_description.aspx?id=" + Eval("project_id")) %>' runat="server" /> 
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" CssClass="foot" />
                <HeaderStyle CssClass="header" BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>
				<PagerStyle CssClass="pgr" BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center"></PagerStyle>
				<RowStyle CssClass="rows" BackColor="White" ForeColor="#000"></RowStyle>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [project_id], [header], [price_per_sq_ft], [area_1bhk], [area_2bhk], [area_3bhk], [no_of_floors], [floor_rise_price], [parking_price], [status] FROM [project_description]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
