<!--<style>
    #menu a{
        color: red;
        font-size: 25px;
        text-decoration: none;
    }
    
     #menu a:hover{
        color: red;
        font-size: 25px;
        text-decoration: underline;
    }
</style>

<table width="100%" height="50%" bgcolor="#FFFF00">
    <tr>
        <td id="menu" align="center"><pre>
      
            <a href="about">AboutUs</a> 
-----------------------------
            <a href="articles">Articles</a>
-----------------------------
            <a href="faqs">faqs</a> 
-----------------------------
            <a href="#">LOGOUT</a></pre>
        </td>
    </tr>
</table>-->
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer ;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}
#myInput {
    border-box: box-sizing;
    background-image: url('searchicon.png');
    position: relative;
    background-position: 14px 12px;
    background-repeat: no-repeat;
    font-size: 16px;
    padding: 14px 20px 12px 45px;
    border: none;
}

.dropdown {
     position: fixed;
    top: 9px;
    
    width: 30px;
    height: 30px;
    border: 3px solid #73AD21;
}

.dropdown-content {
    display: none;
    position: fixed;
    background-color: #f6f6f6;
    min-width: 40px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 5px 5px;
    text-decoration: none;
    display: block;
    
    
}
d.absolute{
    position: fixed;
    top: 30px;
   
    width: 30px;
    height: 50px;
    border: 3px solid #73AD21;
    
    
}

.dropdown a:hover {background-color: #ddd}

.show {display:block;}
</style>
</head>
<body>
    <div width="100%" height="100%" class="dropdown">
<button onclick="myFunction()" class="dropbtn"><span class="glyphicon glyphicon-th-list"></span></button>
  <div id="myDropdown" class="dropdown-content">
    <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
    <a href="about">About</a>
    <a href="viewjobseekerarticles">Articles</a>
    <a href="faQs">FAQs</a>
    
  </div>
</div>

<script>
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}
</script>

</body>
</html>

