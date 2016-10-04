<!DOCTYPE html>
<html>
<head>

<style>
.button {
    background-color: #ff3300; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    height:20%;
    width:20%;
    
}

.button2 {background-color: #000000;} /* Blue */
body 
{
     
    background-image: url("/WebApplication6/slider.jpg");
    
    background-attachment: fixed;
  
    background-position: center;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: cover;
      font-family:Georgia,Garamond,serif;
}

</style>
</head>
<body>
<center><h1 style="margin: 0 auto;color: whitesmoke">WELCOME TO INTRA-CITY PACKAGE DELIVERY SERVICE</h1></center>


<button class="button" style="margin-left:auto;margin-right:auto;display:block;margin-top:15%;margin-bottom:0%" onClick="window.location='/WebApplication6/cab';">Cab Driver</button> 
<button class="button button2" style="margin-left:auto;margin-right:auto;display:block;margin-top:2%;margin-bottom:0%" onClick="window.location='/WebApplication6/user';">User   </button>
<button class="button " style="margin-left:auto;margin-right:auto;display:block;margin-top:2%;margin-bottom:0%" onClick="window.location='/WebApplication6/viewcab';">View Cabs Available</button> 

</body>
</html>

