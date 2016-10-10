import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class final_cust extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
String UserName = request.getParameter("UserName");
String flightcode = request.getParameter("flightcode");
String departing_city = request.getParameter("from");
String arriving_city = request.getParameter("to");
String departing_date = request.getParameter("dep_date");
int seat = Integer.parseInt(request.getParameter("seats"));

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
Statement st = con.createStatement();
Statement st2 = con.createStatement();
ResultSet resultset;

st.executeUpdate("insert into booked values ('" + UserName + "','" + flightcode + "','" + departing_city + "','" + arriving_city + "','" + departing_date + "','" + seat + "')");

out.println("Your Ticket Has Been Booked. HAPPY JOURNEY!!");
resultset = st.executeQuery("select * from flights where flightcode ='" + flightcode + "'");
int empty_seats = 0;
String flightname="null";String station1="null";String station2="null";int flight_dep_timr=0;int flight_arr_time=0;int boarding_gate=0;int seat_available=0;
while(resultset.next())
{
  flightname = resultset.getString("flightname");
  flightcode = resultset.getString("flightcode");
 station1 = resultset.getString("station1");
 station2 = resultset.getString("station2");
 flight_dep_timr = Integer.parseInt(resultset.getString("flight_dep_timr"));
 flight_arr_time = Integer.parseInt(resultset.getString("flight_arr_time"));
 boarding_gate = Integer.parseInt(resultset.getString("boarding_gate"));
empty_seats = Integer.parseInt(resultset.getString("seat_available"));
empty_seats = empty_seats-1;
seat_available=empty_seats;
}
st.executeUpdate("delete from flights where flightcode ='" + flightcode + "'");
st2.executeUpdate("insert into flights values ('" + flightname + "','" + flightcode + "','" + flight_dep_timr + "','" + flight_arr_time + "','" + seat_available + "','" + boarding_gate + "','" + station1 + "','" + station2 + "')");
}