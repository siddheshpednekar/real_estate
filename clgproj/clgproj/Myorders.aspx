<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Myorders.aspx.cs" Inherits="clgproj.Myorders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="myorders.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="Background1.jpg" alt="" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="grid" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="order_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
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

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:HyperLink ID="hyper" Text="Pay Installlment" CssClass="hyper" NavigateUrl= '<%# String.Format("{0}","Payment1.aspx?id=" + Eval("order_id")) %>' runat="server" /> 
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <HeaderStyle CssClass="header"></HeaderStyle>
				<PagerStyle CssClass="pgr"></PagerStyle>
				<RowStyle CssClass="rows"></RowStyle>
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="get_orders" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:SessionParameter Name="un" SessionField="id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </form>
</body>
</html>
