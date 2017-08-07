<%@ page import="java.sql.*" %>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
                <%!
                String uid;
                Connection con;
                Statement st1;
                PreparedStatement pst;
                ResultSet rs;
                %>
                <%
                uid=request.getParameter("uid");        
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                st1=con.createStatement();
                pst=con.prepareStatement("delete from userreg where userid='"+uid+"'");
                pst.execute();
                %>
                <jsp:include page="seekermgmt.jsp"></jsp:include>
                <div style="position: absolute; width: 431px; height: 14px; z-index: 1; left: 240px; top: 89px" id="layer1">
                        <b><font face="Bell MT" color="#CE892B"> </font></b>
                	<b><font face="Bell MT" color="#CE892B">Job Seeker Details are Deleted Successfully
    			</font></b>
                </div>
    </body>
</html>
