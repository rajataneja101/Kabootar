<html>
<head>
</head>
<style>
    html, body {height:100%;}
html {display:table; width:100%;}
.button{
    background-color: #4CAF50; /* Green */
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
body 
{
     
    background-image: url("/WebApplication6/banner4.png");
     min-height: 500px;
    
    background-attachment: fixed;
  
    background-position: center;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: cover;
    display:table-cell; text-align:center; vertical-align:middle;
}
</style>
<body>

<center> <h1><font color="#4CAF50">Enter the details:</font></h1></center>
    
<table align="center" style="font-family:Georgia, Garamond, Serif;color:blue;font-style:italic;font-size: 40px">
      <tr>
      <div style="color:#ffffff">
      <form method="post" action="ok" >
       UID:
       <input type="text" name="u">
       <p>         </p>
SOURCE:

<select name="s" onchange="" >
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
<option>E</option>
</select>       
<p>    </p>        

        TO 

<p>    </p> 
 DESTINATION:

<select name="d" onchange="">
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
<option>E</option>
</select>
</div>
      </tr>
      
     </table>
<div align="center">
    <p>    </p> 
 
 <button class="button" name="submit" id="button"  value="Submit" >SUBMIT!</button>
</div>

   </form>

</body>
</html>