<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
</head>
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
      height:10%;
    width:10%;
    
}
body 
{
     
    background-image: url("/WebApplication6/slider.jpg");
     min-height: 500px;
    
    background-attachment: fixed;
  
    background-position: center;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: cover;
      font-family:Georgia, Garamond, Serif;
     font-colour: white;
}
</style>
<body>


<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver"
     url="jdbc:oracle:thin:@localhost:1521:XE"
     user="hackathon"  password="hackathon"/>
<center>
<br />
<br />
<br />

<%

   

   String b= request.getParameter("source");

   String c= request.getParameter("destination");
   String d= request.getParameter("cabid");
   String p=request.getParameter("intermediate");

%>

<%
try{
         Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");
           Statement st=con.createStatement();
                
                String q="insert into cabdrivers values("+"'"+d+"','"+b+"','"+c+"')";
           
                int i=st.executeUpdate(q);
              
                out.println( "<b><font size=5 font color=white>"+"Cab registered successfully "+"</font></b>");       
   }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }

%>


<br />
<br />
<br />

<form action="cab">
 <button class="button" style="margin-left:auto;margin-right:auto;display:block" name="submit" id="button"  value="Submit" >SUBMIT</button>
</div>
</form>
<form action="index">
 <button class="button" style="margin-left:auto;margin-right:auto;display:block;margin-top: 2%" name="submit" id="button"  value="Submit" >HOME</button>
</div>
</form>

</body>
</html>