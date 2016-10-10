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
  <div class="col-lg-8" style="background-color: darkgray">
    Welcome! Your Flight Entries have been entered.
  </div>
    <%@ page import="java.sql.*" %>

<%

String flightname = request.getParameter("flightname");
String flightcode = request.getParameter("flightcode");
String from = request.getParameter("from");
String to = request.getParameter("to");
int flight_dep_timr = Integer.parseInt(request.getParameter("flight_dep_timr"));
int flight_arr_time = Integer.parseInt(request.getParameter("flight_arr_time"));
int seat_available = Integer.parseInt(request.getParameter("seat_available"));
int boarding_gate = Integer.parseInt(request.getParameter("boarding_gate"));
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("insert into flights  values ('" + flightname + "','" + flightcode + "','" + flight_dep_timr + "','" + flight_arr_time + "','" + seat_available + "','" + boarding_gate + "','" + from + "','" + to + "')");

  %>
