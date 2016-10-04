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
    font-family:Georgia, Garamond, Serif;
    
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

   

   String b= request.getParameter("s");

   String c= request.getParameter("d");
   String d= request.getParameter("u");
   

%>

<%

         Class.forName("oracle.jdbc.driver.OracleDriver");
       
           
     try{       
   


            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset1 = statement.executeQuery("select CABID from cabdrivers where source='"+b+"'") ; 
            resultset1.next();
            String s1=resultset1.getString(1);
         
            ResultSet resultSet2 = statement.executeQuery("select  destination from cabdrivers where CABID ='"+s1+"'");
            resultSet2.next();
            String s2=resultSet2.getString(1);
      
            try{
            ResultSet resultset2 = statement.executeQuery("select CABID from cabdrivers where source='"+s2+"'") ; 
            resultset2.next();
            String s3=resultset2.getString(1);
         
            ResultSet resultSet3 = statement.executeQuery("select  destination from cabdrivers where CABID ='"+s3+"'");
            resultSet3.next();
            String s4=resultSet3.getString(1);
     
                       }catch(Exception e)
                                                             {
                         
                       }
            finally{
            if(s2.equals(c))
                         {
                String q="insert into users values("+"'"+d+"','"+b+"','"+c+"')";
           
                statement.executeUpdate(q);
               out.println( "<b><font size=5 font color=white>"+"Cab Booked successfully "+"</font></b>");
                   
                       }
           
               else 
                               {
               out.println( "<b><font size=5 font color=white>"+"Not booked "+"</font></b>");     
            }
                       }
                   }catch(Exception e)
                                                     {
                       out.print("<b><font size=5 font color=white>"+"Not booked "+"</font></b>");
                   }
                                              
            %>
            
<form action="user">
 <button class="button" style="margin-left:auto;margin-right:auto;display:block" name="submit" id="button"  value="Submit" >SUBMIT</button>
</div>
</form>


</body>
</html>