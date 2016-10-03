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
   String d= request.getParameter("u");
   

%>

<%

         Class.forName("oracle.jdbc.driver.OracleDriver");
       
           
            
   

try{ 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset1 = statement.executeQuery("select CABID from cabdrivers,users where cabdrivers.source='"+b+"'") ; 
            resultset1.next();
            String s1=resultset1.getString(1);
            ResultSet resultSet2 = statement.executeQuery("select  destination from cabdrivers where CABID ='"+s1+"'");
            resultSet2.next();
            String s2=resultSet2.getString(1);
            ResultSet resultSet3 = statement.executeQuery("select  CABID from cabdrivers,users where cabdrivers.source ='"+s2+"'");
            resultSet3.next();
            String s3=resultSet3.getString(1);
            ResultSet resultSet4 = statement.executeQuery("select  destination from cabdrivers where CABID ='"+s3+"'");
            resultSet4.next();
            String s4=resultSet4.getString(1);
            out.print(s1);
            out.print(s2);
            out.print(s3);
            out.print(s4);
            if(s2.equals(c))
                         {
                String q="insert into users values("+"'"+d+"','"+b+"','"+c+"')";
           
                statement.executeUpdate(q);
               out.println( "<b><font size=5>"+"Cab Booked successfully "+"</font></b>");     
                       }
            else if(s4.equals(c))
                               {
                String q="insert into users values("+"'"+d+"','"+b+"','"+c+"')";
           
                statement.executeUpdate(q);
               out.println( "<b><font size=5>"+"Cab Booked successfully "+"</font></b>");   
            }
               else 
                               {
               out.println( "<b><font size=5>"+"Not booked "+"</font></b>");     
            }
                  }catch(Exception e)
                  {
                       out.println("NOT BOOKED");
                  }                             
            %>
            
<form action="user">
<input type="submit" value="Click Here to insert another record">
</form>


</body>
</html>