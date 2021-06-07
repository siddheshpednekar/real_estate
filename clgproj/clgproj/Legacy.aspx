<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Legacy.aspx.cs" Inherits="clgproj.Legacy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <title>Legacy</title>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital@0;1&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="legacy.css">
    <link href="https://fonts.googleapis.com/css2?family=Play:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Courgette&display=swap" rel="stylesheet">

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

        <div>
            <div class="legacy">
            <div><img src="detail.jpg"></div>
            <div><h2 class="dname">City Dwellings</h2></div>
            <div><p>was established in 1969</p></div>
            <div><p class="desc">We bring over 5 decades of real estate excellence to developing and building premium<br>
            residential towers, gated communities, townships and office properties. Our 100+ awards &<br>
            accolades are testimony to our legacy.</p></div>
            <hr>

            <div class="numbers">
            <p class="textA">MORE THAN</p>
            
            <div class="num">
                110
            </div>

            <p class="textB">PROJECTS</p>
            </div>
            
            <div class="numbers1">
            <p class="textA">OVER</p>    
            <div class="num1">
                50
            </div>
            <p class="textB">YEARS</p>    
            </div>

            <div class="numbers2">
            <p class="textA">MORE THAN</p>    
            <div class="num2">
                1500
            </div>
            <p class="textB">HAPPY FAMILIES</p>    
            </div>

            <div class="numbers3">
            <p class="textA">OVER</p>    
            <div class="num3">
                180
            </div>
            <p class="textB">LAKH SQ.MT SOLD</p>    
            </div>
            <hr class="hr1">

            <div class="numbers4">
            <p class="textA">APPROX</p>    
            <div class="num4">
                18
            </div>
            <p class="textB">LAKH SQ.MT. UNDER<br>PLANNING</p>    
            </div>

            <div class="numbers5">
            <p class="textA">EMPLOYEES</p>    
            <div class="num5">
                1350
            </div>
            <p class="textB">IN REAL ESTATE DIVISION</p>    
            </div>


            <!-- Link arrow -->
            <div class="link-arrow">
                <span></span>
            </div>
            <a href="CorporateProfile.aspx" class="link"><p>MORE ABOUT<br>CITY DWELLINGS</p></a>

            <!-- Link arrow end -->
        </div>

        </div>
</asp:Content>