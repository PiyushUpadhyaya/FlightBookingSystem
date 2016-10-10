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
<div class="row">
<div class="col-lg-4">
  <br><br><br><br>
  <div style="text-align: center">
<a href="#Supervisor's_login">Supervisor's Login<br><img src="supervisor.jpeg" alt="Link to Admin site" height="242" width="342"></a>
</div>
</div>
<div class="col-lg-4">
  <br><br><br><br>
  <div style="text-align: center">
<a href="#customer's_login">Customer's Login<img src="customer.png" alt="Link to Supervisor" height="242" width="342"></a>
</div>
</div>
<div class="col-lg-4">
  <form method="post" action="register.jsp">
  <fieldset>
  <legend>Not Yet Registered?<br></legend>
  User Name:<span style="margin-left: 2cm"><input type="text" name="UserName"><br><br>
  Password :<span style="margin-left: 2.15cm"><input type="password" name="password"><br><br>
  Email_address:<span style="margin-left: 1.4cm"><input type="text" name="email"><br><br>
  Contact Number:<span style="margin-left: 1.25cm"><input type="tel" name="tel"><br><br>

  <span style="margin-left: 2.5cm"><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey"  value="submit">
  <span style="margin-left: 2.5cm"><input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey" value="Reset">
  <hr></hr>
  </fieldset>
</form>
</div>
</div>
<hr><hr><hr>
<br><br><br><br>
<div class="row">
  <div class="col-lg-2">
  </div>

    <div class="col-lg-4" id="Supervisor's_login">
    <form method="post" action="login_sup.jsp">
    <fieldset>
    <legend>Supervisor's Credentials<br></legend>
    User Name:<span style="margin-left: 2cm"><input type="text" name="SupName" value=""><br><br>
    Password :<span style="margin-left: 2.15cm"><input type="password" name="suppassword" value=""><br><br>
    <span style="margin-left: 2.5cm"><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey"  value="login_sup">
    <span style="margin-left: 2.5cm"><input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey" value="Reset">
      <hr></hr>
    </fieldset>
  </form>
  </div>
  <div class="col-lg-4" id="customer's_login">
    <form method="post" action="login_cust.jsp">
    <fieldset>
    <legend>Customer's Credentials<br></legend>
    User Name:<span style="margin-left: 2cm"><input type="text" name="CustName" value=""><br><br>
    Password :<span style="margin-left: 2.15cm"><input type="password" name="custpassword" value=""><br><br>
    <span style="margin-left: 2.5cm"><input type="submit" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey"  value="login_cust">
    <span style="margin-left: 2.5cm"><input type="reset" style="font-face: 'Comic Sans MS'; font-size: larger; color: black; background-color: Silver; border: 3pt ridge lightgrey" value="Reset">
    <hr></hr>
  </fieldset>
</form>
  </div>
  <div class="col-lg-2">
  </div>

</div>
</form>

</body>
</html>
