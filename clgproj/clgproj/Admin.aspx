<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="clgproj.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>City Dwellings Admin</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
	<link rel="stylesheet" type="text/css" href="admin.css"/>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css"/>
	
	<!--<script>
		$(function numFormatter(num) {
			if (num > 999 && num < 1000000) {
				return (num / 1000).toFixed(1) + 'K'; // convert to K for number from > 1000 < 1 million 
			} else if (num > 1000000) {
				return (num / 1000000).toFixed(1) + 'M'; // convert to M for number from > 1 million 
			} else if (num < 900) {
				return num; // if value < 1000, nothing to do
			}
		});
    </script>-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="checkbox" name="" id="nav-toggle"/>
	        <div class="sidebar">
                <div class="sidebar-brand">
			        <h2><span class="lab la-brand"><img src="masterpageimg/new.png" width="30px" height="30px"/></span><span>CityDwellings</span></h2>
		        </div>
                <div class="sidebar-menu">
			        <ul>
						<li>
							<a href="#" class="active"><span class="las la-igloo"></span>
							<span>Dashboard</span></a>
						</li>
						<li>
							<a href="Customers.aspx" class="active"><span class="las la-users"></span>
							<span>Customers</span></a>
						</li>
						<li>
							<a href="adminpanel.aspx" class="active"><span class="las la-clipboard-list"></span>
							<span>Upload Project</span></a>
						</li>
						<li>
							<a href="Bookings.aspx" class="active"><span class="las la-shopping-bag"></span>
							<span>Bookings</span></a>
						</li>
						<li>
							<a href="ViewProject.aspx" class="active"><span class="las la-receipt"></span>
							<span>View Projects</span></a>
						</li>
						
					</ul>
		        </div>
            </div>

			<div class="main-content">
				<header>
					<h2>
						<label for="nav-toggle">
							<span class="las la-bars"></span>
						</label>
						<label for="sidename">Dashboard</label>
					</h2>



					<div class="user-wrapper">
						<img src="cssimages/avtar.jpeg" height="30px" width="30px"/>
					<div>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
						<small>Super Admin</small>
						<asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
					</div>
				</div>
			</header>
			<main>
			
				<div class="cards">
					<div class="card-single">
						<div>
							<h1>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
							</h1>
							<span>Customers</span>
						</div>
						<div>
							<span class="las la-users"></span>
						</div>
					</div>
					<div class="card-single">
						<div>
							<h1>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
							</h1>
							<span>Projects</span>
						</div>
						<div>
							<span class="las la-clipboard-list"></span>
						</div>
					</div>
					<div class="card-single">
						<div>
							<h1><asp:Label ID="Label4" runat="server"></asp:Label></h1>
							<span>Orders</span>
						</div>
						<div>
							<span class="las la-shopping-bag"></span>
						</div>
					</div>
					<div class="card-single">
						<div>
							<h1>₹<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
							<span>Income</span>
						</div>
						<div>
							<span class="las la-wallet"></span>
						</div>
					</div>
				</div>

				<div class="recent-grid">

					<div class="projects">
						<div class="card">
							<div class="card-header">
								<h3>Recent Projects</h3>

								
                                <asp:Button ID="Button1" CssClass="button" runat="server" Text="See All" onclick="Button1_Click"  />
							</div>

							<div class="card-body">
								<div class="table-responsive">
									
										<asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" CssClass="grid" PagerStyle-CssClass="pgr" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" DataSourceID="SqlDataSource1" PageSize="5">
											
										    <Columns>
                                                <asp:BoundField DataField="header" HeaderText="Project Name" SortExpression="header" />
                                                <asp:BoundField DataField="price_per_sq_ft" HeaderText="Price per sqft." SortExpression="price_per_sq_ft" />
                                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                                            </Columns>
											<HeaderStyle CssClass="header"></HeaderStyle>

											<PagerStyle CssClass="pgr"></PagerStyle>

											<RowStyle CssClass="rows"></RowStyle>
											
										</asp:GridView>

                                    
										<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [header], [price_per_sq_ft], [status] FROM [project_description] ORDER BY [project_id] DESC"></asp:SqlDataSource>
									


								</div>
							</div>
						</div>
					</div>
				

				<div class="customers">
					<div class="card">
						<div class="card-header">
							<h3>New Customer</h3>
								<asp:Button ID="Button2" CssClass="button" runat="server" Text="See All" onclick="Button2_Click" />
						</div>
						<div class="card-body">
							<asp:GridView ID="GridView2" runat="server" AllowCustomPaging="True" AllowPaging="True" AutoGenerateColumns="False" CssClass="grid" PagerStyle-CssClass="pgr" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"  DataSourceID="SqlDataSource2" PageSize="5">
								
							    <Columns>
                                    <asp:BoundField DataField="userName" HeaderText="Username" SortExpression="userName" />
                                    <asp:BoundField DataField="emailID" HeaderText="Email Id" SortExpression="emailID" />
                                    <asp:BoundField DataField="usertype" HeaderText="Usertype" SortExpression="usertype" />
                                </Columns>
								<HeaderStyle CssClass="header"></HeaderStyle>

								<PagerStyle CssClass="pgr"></PagerStyle>

								<RowStyle CssClass="rows"></RowStyle>
								
							 </asp:GridView>



                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CityDwellingsConnectionString %>" SelectCommand="SELECT [userName], [emailID], [usertype] FROM [Customer] ORDER BY [id] DESC"></asp:SqlDataSource>

							</div>
						</div>
					</div>
				</div>
			</main>
			</div>
        </div>
    </form>
</body>
</html>
