<html>
<head>
</head>
<style>
body 
{
     
    background-image: url("/WebApplication6/banner4.png");
     min-height: 500px;
    
    background-attachment: fixed;
  
    background-position: center;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: cover;
}
</style>
<body font color="#4CAF50">

<center> <h1><font color="#4CAF50">Enter the details:</font></h1></center>
    
    <table>
      <tr>
      
        <td><form method="post" action="ok" font color="#4CAF50">


<select name="s" onchange="">
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
<option>E</option>
</select>       


    
              

TO 
<center>
<select name="d" onchange="">
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
<option>E</option>
</select> 

 <input type="submit" value="Submit" >
</center>     
</form>

<!--
<form:select path="country" items="${countryList}" />
<select id="country" name="country">
   <option value="US">United Stated</option>
   <option value="CHINA">China</option>
   <option value="SG">Singapore</option>
   <option value="MY">Malaysia</option>
</select>
-->
</body>
</html>