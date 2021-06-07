<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="clgproj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="projects.css" />
<script src="https://kit.fontawesome.com/09848ef6f3.js" crossorigin="anonymous"></script>

    <div>
        <div class="grid-container">
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <asp:LinkButton id="LinkButton1" runat="server" OnClick="Button_Click" CommandArgument ='<%# Eval("project_id") %>'>
                        <div class="grid-item"  ID="div_<%# DataBinder.Eval(Container,"ItemIndex") %>">
                            <div class="location" style="background:url('<%#"data:Image/png;base64,"+ Convert.ToBase64String((byte[])Eval("main_image"))%>');">
                                <div class="project-content">
                                    <center>+<br>View details</center>
                                </div>
                            </div>
                            <div class="loc">
                                <center><asp:Label ID="Label1" runat="server" Text='<%#Eval("header")%>'></asp:Label></center>
                            </div>
                        </div>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>