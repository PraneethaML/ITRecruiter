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
                String prid;
                Connection con;
                Statement st1;
                PreparedStatement pst;
                ResultSet rs;
                %>
                <%
                prid=request.getParameter("prid");        
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                st1=con.createStatement();
                pst=con.prepareStatement("delete from provider where prid='"+prid+"'");
                pst.execute();
                %>
                <jsp:include page="providermgmt.jsp"></jsp:include>
                <div style="position: absolute; width: 431px; height: 14px; z-index: 1; left: 240px; top: 89px" id="layer1">
                        <b><font face="Bell MT" color="#CE892B"> </font></b>
                	<b><font face="Bell MT" color="#CE892B">Job Provider Details are Deleted Successfully
    			</font></b>
                </div>
    </body>
</html>
