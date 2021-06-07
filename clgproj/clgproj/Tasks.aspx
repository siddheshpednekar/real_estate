<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="clgproj.Tasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="tasks.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div id="myDIV" class="header">
                <h2 style="margin:5px">My Tasks</h2>
                <input type="text" id="myInput" placeholder="Title..." />
                <span onclick="newElement()" class="addBtn">Add</span>
            </div>

            <ul id="myUL">
            
            </ul>

            <script>
            // Create a "close" button and append it to each list item
            var myNodelist = document.getElementsByTagName("LI");
            var i;
            for (i = 0; i < myNodelist.length; i++) {
                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                myNodelist[i].appendChild(span);
            }

            // Click on a close button to hide the current list item
            var close = document.getElementsByClassName("close");
            var i;
            for (i = 0; i < close.length; i++) {
                close[i].onclick = function() {
                var div = this.parentElement;
                div.style.display = "none";
                }
            }

            // Add a "checked" symbol when clicking on a list item
            var list = document.querySelector('ul');
            list.addEventListener('click', function(ev) {
                if (ev.target.tagName === 'LI') {
                    ev.target.classList.toggle('checked');
                }
            }, false);

            // Create a new list item when clicking on the "Add" button
            function newElement() {
                var li = document.createElement("li");
                var inputValue = document.getElementById("myInput").value;
                var t = document.createTextNode(inputValue);
                li.appendChild(t);
                if (inputValue === '') {
                    alert("You must write something!");
                } else {
                    document.getElementById("myUL").appendChild(li);
                }
                document.getElementById("myInput").value = "";

                var span = document.createElement("SPAN");
                var txt = document.createTextNode("\u00D7");
                span.className = "close";
                span.appendChild(txt);
                li.appendChild(span);

                for (i = 0; i < close.length; i++) {
                    close[i].onclick = function() {
                    var div = this.parentElement;
                    div.style.display = "none";
                    }
                }
            }
</script>


        </div>
    </form>
</body>
</html>
