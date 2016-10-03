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

         Class.forName("oracle.jdbc.driver.OracleDriver");
           
           
            
   

try{ 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset1 = statement.executeQuery("select source from cabdrivers where cabdrivers.source='"+b+"'") ;
          
 boolean x=(resultset1.next());
                                    
           ResultSet resultset2 = statement.executeQuery("select destination from cabdrivers where cabdrivers.destination='"+c+"'") ;
          boolean y=(resultset2.next());
         
                   if((x==true) && (y==true))
                         {    
           String q;
                
                q="insert into users values("+"'"+d+"','"+b+"','"+c+"')";
           
                statement.executeUpdate(q);
              
               out.println( "<b><font size=5>"+"Cab successfully Registered "+"</font></b>"); 
                                           
                       } else
                               {
                 out.println( "<b><font size=5>"+"Unsuccessful "+"</font></b>"); 
            }
                  }catch(Exception e)
                  {
                       out.println(e);
                  }                             
            %>
            
<form action="user">
<input type="submit" value="Click Here to insert another record">
</form>


</body>
</html>