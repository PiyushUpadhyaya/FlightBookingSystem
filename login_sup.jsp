<%@ page import ="java.sql.*" %>

<%
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
%>
