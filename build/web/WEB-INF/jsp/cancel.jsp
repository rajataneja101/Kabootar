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
       
           
     
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset1 = statement.executeQuery("select CABID from cabdrivers where source='"+b+"'") ; 
            resultset1.next();
            String s1=resultset1.getString(1);
            ResultSet resultset2 = statement.executeQuery("UPDATE cabdrivers SET available='YES' WHERE cabid='"+s1+"'") ; 
            resultset2.next();
            %>