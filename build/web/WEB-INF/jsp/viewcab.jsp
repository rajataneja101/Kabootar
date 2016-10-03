<%@ page import="java.sql.*" %>

<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<style>
table {
    border-collapse: collapse;
    width: 40%;
   
    margin: 0 auto;
}

th, td {
    text-align: center;
    padding: 8px;
    width: 10%;
}

tr:nth-child(even){background-color: #f2f2f2}
tr:nth-child(odd){background-color: #f2f2f2}
th {
    background-color: #4CAF50;
    color: white;
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
}
</style>
<HTML>
    <HEAD>
    <center><TITLE>Available cabs</center></TITLE>
    </HEAD>

    <BODY  style="margin: 0 auto">
        <H1 style="color: white">Available cabs </H1>

        <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:XE", "hackathon", "hackathon");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from cabdrivers") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>Source</TH>
                <TH>Destination</TH>
                <TH>Intermediate Stops</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>