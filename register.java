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
 
public class register extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

	String user = request.getParameter("UserName");
    String pwd = request.getParameter("password");
    String email = request.getParameter("email");
    String about = request.getParameter("tel");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
    Statement st = con.createStatement();
    //ResultSet rs;
    //MIGHT BE ERROR CHECK
//    if(about=="Publisher")
  //  {
    int i = st.executeUpdate("insert into custdata  values ('" + user + "','" + pwd + "','" + email + "','" + about + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("home.jsp");
    }
}