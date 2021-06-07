<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="clgproj.Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="customers.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background1.jpg" alt="" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" CssClass="grid" DataSourceID="SqlDataSource1" CellPadding="4" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" >
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="userName" HeaderText="Username" SortExpression="userName" />
                    <asp:BoundField DataField="emailID" HeaderText="Email ID" SortExpression="emailID" />
                    <asp:BoundField DataField="mobileNumber" HeaderText="Contact Number" SortExpression="mobileNumber" />
                    <asp:BoundField DataField="usertype" HeaderText="User type" SortExpression="usertype" />
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" HeaderText="Action" SelectText="Show Bookings" />
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
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="detail" DataKeyNames="order_id" DataSourceID="SqlDataSource2" PageSize="5">
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
            
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [id], [userName], [emailID], [mobileNumber], [usertype] FROM [Customer]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT * FROM [orders] WHERE ([user_id] = @user_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="user_id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
