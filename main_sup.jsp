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
  <div class="col-lg-4" style="background-color: darkgray">
      <form method="post" action="final_sup.jsp">
      <strong>
          <ul class="nav nav-pills nav-stacked">
              <li class="active"><button type="button" class="btn btn-primary btn-md">**DETAILS**</button></li><br/>
              <div style="padding-left: 0px;border-left: double;border-width: 12px;border-bottom-color: aqua">
              <div class="side-nav-bar-wrap" style="position: relative;left: 45px">
                  <li >Flight Name:<input type="text" style="margin-left: 2.2cm" placeholder="Flight Name" name = "flightname"></li><hr/>
                  <li >Flight code:<input type="text" style="margin-left: 2.45cm" placeholder="Flight Number" name = "flightcode"></li><hr/>
                  <li >From:<input type="text" style="margin-left: 2.2cm" placeholder="Starting Place" name = "from"></li><hr/>
                  <li >Destination:<input type="text" style="margin-left: 2.45cm" placeholder="Destination Place" name = "to"></li><hr/>

                  <li >Flight Departure Time:<input type="number" style="margin-left: .5cm" placeholder="0000 to 2359" name = "flight_dep_timr" min="0000" max="2359"></li><hr/>
                  <li >Flight Arrival Time:<input type="number" style="margin-left: 1.0cm" placeholder="0000 to 2359" name = "flight_arr_time" min="0000" max="2359"></li><hr/>
                  <li >Seat Available:<input type="number" style="margin-left: 2.0cm" placeholder="00" name = "seat_available" min="0" max="120"></li><hr/>
                  <li >Boarding Gate:<input type="number" style="margin-left: 2.0cm" placeholder="00" name = "boarding_gate"min="0" max="12"></li><hr/>

                  <span style="margin-left: 2.5cm"><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey"  value="submit">
                  <span style="margin-left: 2.5cm"><input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey" value="Reset">
              </div>
              </div>
          </ul>

      </strong>
    </form>
  </div>
</body>
</html>
<%
    if ((session.getAttribute("pubid") == null) || (session.getAttribute("pubid") == "")) {
%>
You are not logged in<br/>
<a href="home.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("pubid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
