<%@ page import="java.sql.*" %>

<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>

     
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
 
 
<% 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset1 = statement.executeQuery("select CABID from cabdrivers,users where cabdrivers.source=users.source") ; 
            resultset1.next();
            String s1=resultset1.getString(1);
            out.print(s1);
            ResultSet resultSet2 = statement.executeQuery("select destination from cabdrivers where CABID ='"+s1+"'");
            resultSet2.next();
            String s2=resultSet2.getString(1);
            out.print(s2);
            %>

        
    
<center> <h1><font color="#4CAF50">Enter the details:</font></h1></center>
    
<table align="center" style="font-family:Georgia, Garamond, Serif;color:blue;font-style:italic;font-size: 40px">
      <tr>
      <div style="color:#ffffff">
      <form method="post" action="okcab" >
       CAB ID:
       <input type="text" name="cabid">
       <p>         </p>
SOURCE:

<select name="source" onchange="" >
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

<select name="destination" onchange="">
<option>A</option>
<option>B</option>
<option>C</option>
<option>D</option>
<option>E</option>
</select>
 
 <p>    </p> 
 INTERMEDIATE POINTS:

<select name="intermediate" onchange="">
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