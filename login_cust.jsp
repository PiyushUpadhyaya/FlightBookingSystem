
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
</body>
</html>
<%
    String subid = request.getParameter("CustName");
    String pwd = request.getParameter("custpassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from custdata where custName='" + subid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("subid", subid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("main_cust.jsp");
    } else {
        out.println("Dear Subscriber!! Invalid Credentials <a href='home.jsp'>try again</a>");
    }
%>
