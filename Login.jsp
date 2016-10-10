<html>
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
  <body  style="background-color: cornsilk">

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
                          <li ><a href="#">Home <span class="glyphicon glyphicon-home"></span></a></li>
                          <li><a href="#">Arrival</a></li>
                          <li><a href="#">Departure</a></li>
                          <li><a href="#">Delayed Flights</a></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">

                          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                      </ul>
                  </div>
              </div>
          </nav>


    </div>

  <%@ page import="java.util.*" %>
<%@ page import="javax.sql.*;" %>
<form method="post" action="insert.jsp">
<%
java.sql.Connection con;
java.sql.Statement s;
java.sql.ResultSet rs;
java.sql.PreparedStatement pst;

con=null;
s=null;
pst=null;
rs=null;
String UserName = request.getParameter("UserName");
String Password = request.getParameter("UserName");

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/TEST"
     user="root"  password="piyush"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from Employees;
String DbUSer;
DbUSer = null;
if{($)}
</sql:query>
%>
</form>

</body>


</html>
