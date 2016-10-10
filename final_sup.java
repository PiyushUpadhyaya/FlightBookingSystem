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
 
public class final_sup extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
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
}
  