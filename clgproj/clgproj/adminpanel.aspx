<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="clgproj.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="adminpanel.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.bgimg').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.contimg').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL2(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.cont2').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL3(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#plan-img-img').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL4(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#floor-plan-img').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL5(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.amimg').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });

                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL6(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.amimg1').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });

                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL7(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('div.amimg2').css({
                        'background': 'transparent url(' + e.target.result + ') left top no-repeat',
                        'background-size': '100% 100%'
                    });
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL8(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#locimg-img').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL9(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#1bhkimg').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL10(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#2bhkimg').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function readURL11(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#3bhkimg').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="abc" style="display: flex;align-items: center;justify-content: center; width: 100%">
   
	<asp:FileUpload ID="FileUpload1" runat="server" class="upload-box" onchange="readURL(this);"
        style="top: 230px;position: absolute;" accept=".png,.jpg,.jpeg,.gif" ToolTip="Project Image" />
                <div class="bgimg">
        
		<div class="imgcont">
		<div class="imghead"><fieldset><legend>Header</legend>
            <asp:TextBox ID="TextBox12" runat="server" class="tbox" name="header" TextMode="MultiLine" ToolTip="Project Title"></asp:TextBox>
            </fieldset></div>
		<div class="imgdes"><fieldset><legend>Header Description</legend>
            <asp:TextBox ID="TextBox1" runat="server" class="tbox" name="header description" TextMode="MultiLine" ToolTip="Project Description"></asp:TextBox>
            </fieldset></div>	
		</div>
	</div>
    </div>
	<div class="info">
		<fieldset><legend>Authentication Description</legend>
            <asp:TextBox ID="TextBox2" runat="server" Class ="tbox" Columns="200" name="authentication description" TextMode="MultiLine" ToolTip="Authentication Description"></asp:TextBox>
           </fieldset>
	</div>
	<div class="overview">
        <div class="cont1">
            <div class="contimg">
    <asp:FileUpload ID="FileUpload2" runat="server" class="upload-box"
        onchange="readURL1(this);" name="overview image1" accept=".png,.jpg,.jpeg,.gif" ToolTip="Overview Image" />

            </div>
            <div class="contdes">
                <h1>Overview</h1>
                <fieldset><legend>Overview Description</legend>           
            <asp:TextBox ID="TextBox3" runat="server" class="tbox" rows="10" name="overview description" TextMode="MultiLine"></asp:TextBox>
                    </fieldset>
            </div>
        </div>
        <div class="cont2">
            <asp:FileUpload ID="FileUpload3" runat="server" class="upload-box"
                onchange="readURL2(this);" name="overview image2" accept=".png,.jpg,.jpeg,.gif" ToolTip="Overview Image" />
            

        </div>
    </div>
    <div class="project-plan">
        <div class="project-title">
            <fieldset><legend>Plan Heading</legend>
       <asp:TextBox ID="TextBox4" runat="server" class="tbox" Columns="50" name="plan heading" TextMode="MultiLine"></asp:TextBox>
                </fieldset>
            <fieldset><legend>Plan Description</legend>
                <asp:TextBox ID="TextBox5" runat="server" class="tbox" Columns="200" name="plan description" TextMode="MultiLine"></asp:TextBox>
               </fieldset>
        </div>
        <div class="plan-img" >
            <img src="" id="plan-img-img" width="100%">
            <center>
                <asp:FileUpload ID="FileUpload4" runat="server" class="upload-box"
                    onchange="readURL3(this);" name="complex plan image" ToolTip="Complex Plan Image" accept=".png,.jpg,.jpeg,.gif" />
                

            </center>
            
        </div>
        <div class="floor-plan">
            <img src="" id="floor-plan-img" width="100%">
            <center>
               <asp:FileUpload ID="FileUpload5" runat="server" class="upload-box"
                   onchange="readURL4(this);" name="floor plan image" ToolTip="Floor Plan Image" accept=".png,.jpg,.jpeg,.gif" />
                

            </center>
        </div>
    </div>
    <div class="amenities">
            <fieldset><legend>Amenity Heading</legend>
              <asp:TextBox ID="TextBox6" runat="server" class="tbox" Columns="50" name="amenity heading"  TextMode="MultiLine"></asp:TextBox>
                

                </textarea></fieldset>
            <fieldset><legend>Amenity Description</legend>
                <asp:TextBox ID="TextBox7" runat="server" class="tbox" Columns="150" name="amenity description"  TextMode="MultiLine"></asp:TextBox>
                

                </fieldset>
        </div>
	<div class="amenity">
     <div class="amimg">
        <center>
            <asp:FileUpload ID="FileUpload6" runat="server" class="upload-box"
                onchange="readURL5(this);" name="amenity1 image" ToolTip="Amenity Image" accept=".png,.jpg,.jpeg,.gif"/>
            
        </center>
    </div>
     <div class="amdes">

        
             <fieldset><legend>Amenity1 Description</legend>
 <asp:TextBox ID="TextBox8" runat="server" class="tbox" rows="25" Columns="70" name="amenity1 description"  TextMode="MultiLine"></asp:TextBox>

           

                 </fieldset>
         
     </div>   
    </div>
    <div class="amenity1">
     <div class="amdes1">

         
          <fieldset><legend>Amenity2 Description</legend>
          
       <asp:TextBox ID="TextBox9" runat="server" class="tbox" rows="25" Columns="70" name="amenity2 description"  TextMode="MultiLine"></asp:TextBox>

           </fieldset>
         
     </div> 
     <div class="amimg1">
        <center>
            <asp:FileUpload ID="FileUpload7" runat="server" class="upload-box"
                onchange="readURL6(this);" name="amenity2 image" ToolTip="Amenity Image" accept=".png,.jpg,.jpeg,.gif" />
            

        </center>
    </div>  
    </div>
    <div class="amenity2">
     <div class="amimg2"">
        <center>
            <asp:FileUpload ID="FileUpload8" runat="server" class="upload-box"
                onchange="readURL7(this);" name="amenity3 image" ToolTip="Amenity Image" accept=".png,.jpg,.jpeg,.gif" />
            

        </center>
    </div>
     <div class="amdes2">

         
            <fieldset><legend>Amenity3 Description</legend>
 <asp:TextBox ID="TextBox10" runat="server" class="tbox" rows="25" Columns="70" name="amenity3 description"  TextMode="MultiLine"></asp:TextBox>

               

                </fieldset>
         
     </div>   
    </div>

    <div class="location">
        <div class="loctitle">
            <fieldset><legend>Location Header</legend>
                <asp:TextBox ID="TextBox11" runat="server" class="tbox" Columns="50" name="location header"  TextMode="MultiLine"></asp:TextBox>
                </fieldset>
        </div>
    <div class="locimg">
        <img src="" id="locimg-img" width="100%">
        <center>
            <asp:FileUpload ID="FileUpload9" runat="server" class="upload-box"
                onchange="readURL8(this);" name="complex plan image" ToolTip="Location Image" accept=".png,.jpg,.jpeg,.gif" />
        </center>

        

    </div>
        <div>
                
            <h3><asp:Label ID="Label1" runat ="server" Text="status:"></asp:Label><br /></h3>
            <b><asp:RadioButton ID="RadioButton1" runat="server" Text="Ongoing" GroupName="status" Checked="True" />  <br />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Completed" GroupName="status" /></b> <br />
            <fieldset><legend>price per square foot</legend>
            <asp:TextBox ID="TextBox13" runat="server" class="tbox" Columns="50" name="price per square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <fieldset><legend>area of 1bhk flat</legend>           
            <asp:TextBox ID="TextBox14" runat="server" class="tbox" Columns="50" name="area of 1bhk flat in sqaure foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <div class="1bhkimg">
        <img src="" id="1bhkimg" />
        <center>
            <asp:FileUpload ID="FileUpload10" runat="server" class="upload-box"
                onchange="readURL9(this);" name="complex plan image" ToolTip="1BHK Image" accept=".png,.jpg,.jpeg,.gif" />
        </center>  
    </div>
            <fieldset><legend>area of 2bhk flat</legend>
                
            <asp:TextBox ID="TextBox15" runat="server" class="tbox" Columns="50" name="area of 2bhk flat in square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <div class="2bhkimg">
        <img src="" id="2bhkimg" />
        <center>
            <asp:FileUpload ID="FileUpload11" runat="server" class="upload-box"
                onchange="readURL10(this);" name="complex plan image" ToolTip="2BHK Image" accept=".png,.jpg,.jpeg,.gif" />
        </center>  
    </div>

            <fieldset><legend>area of 3bhk flat</legend>                               
            <asp:TextBox ID="TextBox16" runat="server" class="tbox" Columns="50" name="area of 3bhk flat in square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <div class="3bhkimg">
        <img src="" id="3bhkimg" />
        <center>
            <asp:FileUpload ID="FileUpload12" runat="server" class="upload-box"
                onchange="readURL11(this);" name="complex plan image" ToolTip="3BHK Image" accept=".png,.jpg,.jpeg,.gif" />
        </center>  
    </div>
            <fieldset><legend>no. of floors</legend>
            <asp:TextBox ID="TextBox17" runat="server" class="tbox" Columns="50" name="area of 3bhk flat in square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <fieldset><legend>floor rise price</legend>
            <asp:TextBox ID="TextBox18" runat="server" class="tbox" Columns="50" name="area of 3bhk flat in square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <fieldset><legend>parking price</legend>
            <asp:TextBox ID="TextBox19" runat="server" class="tbox" Columns="50" name="area of 3bhk flat in square foot" TextMode="MultiLine"></asp:TextBox></fieldset>
            <br />
            <br />
            
            </div>
        <asp:Button ID="Button1" runat="server" CssClass="book-btn" Text="Button" OnClick="Button1_Click" />
        </div>
            
        </div>
    </form>
</body>
</html>
