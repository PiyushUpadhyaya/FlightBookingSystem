package tim;
import java.io.*;
import java.lang.*;
import java.io.PrintWriter;
import java.sql.Connection;
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
 
public class login_sup extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

 String pubid = request.getParameter("SupName");
    String pwd = request.getParameter("suppassword");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:1280/seproject","root", "piyush");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from supdata where pubName='" + pubid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("pubid", pubid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("main_sup.jsp");
    } else {
        out.println("Dear Supervisor!! Invalid Credentials <a href='home.jsp'>try again</a>");
    }
}