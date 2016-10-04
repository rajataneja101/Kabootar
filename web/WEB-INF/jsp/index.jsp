<!DOCTYPE html>
<html>
<head>

<style>
.button {
    background-color: #cc6600; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    cursor: pointer;
    height:30%;
    width:30%;
    
}

.button2 {background-color: #ffcc66; color: #cc6600} /* Blue */
body 
{
     
    background-image: url("/WebApplication6/r.jpg");
    
    background-attachment: fixed;
  
    background-position: left;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: 50%;
      font-family:Georgia,Garamond,serif;
}

</style>
</head>
<text  style="margin-right:10%; margin-left:auto; display: block;margin-top: 10%;font-size: 50px; /* Green */
    border: none;
    color: #cc6600;
    
    text-align: center; 
     height:30%;
    width:30%;
    " ><b><font face="Comic sans MS" size="20">KABOOTAR</font></b><br /></text>
<body>



<button class="button" style="margin-left:auto;margin-right:10%;display:block;margin-top:10%;margin-bottom:0%" onClick="window.location='/WebApplication6/cab';">Cab Driver</button> 
<button class="button button2" style="margin-left:auto;margin-right:10%;display:block;margin-top:2%;margin-bottom:0%" onClick="window.location='/WebApplication6/user';">User   </button>
<button class="button " style="margin-left:auto;margin-right:10%;display:block;margin-top:2%;margin-bottom:0%" onClick="window.location='/WebApplication6/viewcab';">View Cabs Available</button> 

</body>
</html>

