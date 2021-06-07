<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuccessfulBooking.aspx.cs" Inherits="clgproj.SuccessfulBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet"/>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
        margin-top:5%;
      }
      .btn{
          text-decoration:none;
          font-size:18px;
          color: #9ABC66;
          font-weight:bolder;
          cursor:pointer;
          outline:none;
          border:none;
      }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card">
                <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
                    <i class="checkmark">✓</i>
                </div>
                <h1>Success</h1> 
                <p>Congratulations!! on your successful payment of your dream house.<br/> You can view your orders in My Orders Section.</p><br />
                <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Home" OnClick="Button1_Click" />&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<asp:Button ID="Button2" runat="server" CssClass="btn" Text="My Orders" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
