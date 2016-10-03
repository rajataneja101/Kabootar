<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
</head>
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

   

%>

<%
try{
         Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");
           Statement st=con.createStatement();
           
                String q="insert into users values("+"'"+b+"','"+c+"'"+")";
           
                int i=st.executeUpdate(q);
              
                out.println( "<b><font size=5>"+"Cab successfully booked "+"</font></b>");      
   }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }

%>


<br />
<br />
<br />

<form action="user">
<input type="submit" value="Click Here to insert another record">
</form>


</body>
</html>