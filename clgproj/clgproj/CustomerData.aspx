<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerData.aspx.cs" Inherits="clgproj.CustomerData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="customerdata.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <img src="Background1.jpg" alt="" />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" CssClass="grid" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="userName" HeaderText="Username" SortExpression="userName" />
                    <asp:BoundField DataField="emailID" HeaderText="Email Id" SortExpression="emailID" />
                    <asp:BoundField DataField="mobileNumber" HeaderText="Contact Number" SortExpression="mobileNumber" />
                    <asp:BoundField DataField="usertype" HeaderText="Usertype" SortExpression="usertype" />
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
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [id], [userName], [emailID], [mobileNumber], [usertype] FROM [Customer]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
