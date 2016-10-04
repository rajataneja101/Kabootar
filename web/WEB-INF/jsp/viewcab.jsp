<%@ page import="java.sql.*" %>

<% Class.forName("oracle.jdbc.driver.OracleDriver"); %>
<style>

.button {
    background-color: #cc6600; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    cursor: pointer;
  
}

.button2 {background-color: #ffcc66; color: #cc6600} /* Blue */
body 
{
     
  
    background-attachment: fixed;
  
    background-position: left;
    
    background-repeat: no-repeat;
    /* Scale the background image to be as large as possible */
    background-size: 50%;
      font-family:Georgia,Garamond,serif;
}


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
    background-color: #cc6600;
    color: white;
}

</style>
<HTML>
    <HEAD>
    <center><TITLE>Available cabs</center></TITLE>
    </HEAD>

    <BODY  style="margin: 0 auto">
        <H1 style="color: #cc6600"><font face="Comic sans MS" size="20">Available cabs </font></H1>

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
                <TH>Availability</TH>
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
    <form action="index">
 <button class="button" style="margin-left:auto;margin-right:auto;display:block;margin-top: 2%;height:50px;
    width:150px;" name="submit" id="button"  value="Submit" >HOME</button>
</div>
</form>
</HTML>