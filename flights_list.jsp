<%@ page import ="java.sql.*" %>
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<Title>
    Welcome To The Airport Network Flight Scheduling Portal
</Title>
<head>

</head>
<body  style="background-color: #E5E4E2">

    <div class="container-fluid" style="padding-top: 14px;background-color: gray">
        <nav class="navbar navbar-inverse" style="background-color: black">

            <div class="nav nav-pills" style="color: orange;font-weight: 600;font-family: cursive; font-size: 17px;padding-bottom: 3px">

                <button type="button" class="navbar-toggle" data-toggle="collapse" >
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">(LOGO TO INSERT)</a>


                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li ><a href="home.jsp">Home <span class="glyphicon glyphicon-home"></span></a></li>
                      <li><a href="flights_list.jsp">Flights List</a></li>


                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>


  </div>
  <div class="col-lg-2" style="background-color: darkgray"></div>
  <div class="col-lg-8" style="background-color: lightgray">
        <TABLE BORDER="1">
            <TR>
                <TH>Flight Name</TH>
                <TH>Flight Code</TH>
                <TH>Departing City</TH>
                <TH>Arriving City</TH>
                <TH>Departing Time</TH>
                <TH>Arriving Time</TH>
                <TH>Seat Available</TH>
                <TH>Boarding Gate</TH>
            </TR>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
            Statement st = con.createStatement();
            ResultSet resultset;
            resultset = st.executeQuery("select * from flights");
            while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(7) %></TD>
                <TD> <%= resultset.getString(8) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
            </TR>
            <% } %>
        </TABLE>
      </div>
    </BODY>
</HTML>
