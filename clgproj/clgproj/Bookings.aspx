<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="clgproj.Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="bookings.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background1.jpg" alt="" />
            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="order_id" DataSourceID="SqlDataSource1" CssClass="grid">
                <Columns>
                    <asp:BoundField DataField="order_id" HeaderText="Order Id" InsertVisible="False" ReadOnly="True" SortExpression="order_id" />
                    <asp:BoundField DataField="user_id" HeaderText="User Id" SortExpression="user_id" />
                    <asp:BoundField DataField="project_id" HeaderText="Project Id" SortExpression="project_id" />
                    <asp:BoundField DataField="rooms" HeaderText="Rooms" SortExpression="rooms" />
                    <asp:BoundField DataField="floor_no" HeaderText="Floor No." SortExpression="floor_no" />
                    <asp:BoundField DataField="parking" HeaderText="Parking" SortExpression="parking" />
                    <asp:BoundField DataField="total_price" HeaderText="Total Price" SortExpression="total_price" />
                    <asp:BoundField DataField="installments_to_pay" HeaderText="Installments to Pay" SortExpression="installments_to_pay" />
                    <asp:BoundField DataField="emi_per_installment" HeaderText="EMI per Installment" SortExpression="emi_per_installment" />
                    <asp:BoundField DataField="amount_paid" HeaderText="Amount Paid" SortExpression="amount_paid" />
                    <asp:BoundField DataField="remaining_amount" HeaderText="Remaining Amount" SortExpression="remaining_amount" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" CssClass="foot" />
                <HeaderStyle CssClass="header" BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>
				<PagerStyle CssClass="pgr" BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center"></PagerStyle>
				<RowStyle CssClass="rows" BackColor="White" ForeColor="#000"></RowStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT * FROM [orders]"></asp:SqlDataSource>

            <br />
        </div>
    </form>
</body>
</html>
