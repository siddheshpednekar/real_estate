<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="clgproj.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <title>Home</title>
    <script src="https://kit.fontawesome.com/09848ef6f3.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="home.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">


    <!-- odometer -->

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(function () {
            let start = 0;
            let end = $(".num").html();
            let speed = 10;

            setInterval(function () {
                if (start < end) {
                    start++;
                }
                $(".num").html(start);
            }, speed);
        });
    </script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num1").html();
        let speed = 10;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num1").html(start);
        }, speed);
    });
</script>
    <script>
        $(function () {
            let start = 0;
            let end = $(".num2").html();
            let speed = 2;

            setInterval(function () {
                if (start < end) {
                    start++;
                }
                $(".num2").html(start);
            }, speed);
        });
    </script>
        
<script>
    $(function () {
        let start = 0;
        let end = $(".num3").html();
        let speed = 10;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num3").html(start);
        }, speed);
    });
</script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num4").html();
        let speed = 25;

        setInterval(function () {
            if (start < end) {
                start++;
                start++;
            }
            $(".num4").html(start);
        }, speed);
    });
</script>

<script>
    $(function () {
        let start = 0;
        let end = $(".num5").html();
        let speed = 2;

        setInterval(function () {
            if (start < end) {
                start++;
            }
            $(".num5").html(start);
        }, speed);
    });
</script>


    <!-- Odometer End -->

    <div class="imageContainer">
        
        <img src="l1.jpg"/></div>        

        <center>
        <div class="name">
                <h2>
                    DISCOVER THE ELEVATED LIFE<br/>
                    BEYOND EXCEPTIONAL
                </h2>
        </div>
        </center>

</asp:Content>
