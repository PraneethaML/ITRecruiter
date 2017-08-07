<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
<div style="position: absolute; width: 447px; height: 62px; z-index: 1; left: 152px; top: 152px" id="layer1">
			<table border="2" width="100%" id="table1" bordercolor="#9DCEFF">
                    <tr>
                        <td width="126" align="center"><b>
						<font face="Tahoma" color="#59ACFF" size="2">Name</font></b></td>
                        <td width="303" align="center"><b>
						<font face="Tahoma" color="#59ACFF" size="2">Feedback</font></b></td>
                    </tr>
                    
                    
                    <%!
                    Connection con;
                    Statement st;
                    PreparedStatement pst;
                    ResultSet rs;
                    String utype,url;
                    %>
                    <%
                    utype=request.getParameter("utype");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                    st=con.createStatement();
                    rs=st.executeQuery("select * from feedback");
                    while(rs.next())
                    {
                    %>
                      <tr>
                        <td width="126" align="center"><font face="Trebuchet MS" size="3"><%=rs.getString(2)%></font></td>
                        <td width="303" align="center"><font face="Trebuchet MS" size="3"><%=rs.getString(3)%>
                      </tr>
                    <%
                    }
                    if(utype.equals("admin"))
                    {
                    url="adminlogin.jsp";
                    }
                    else if(utype.equals("provider"))
                    {
                    url="providerlogin.jsp";
                    }
                    %>
                </table>
            </div>
        <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 599px; top: 101px" id="layer3">
                <b><a style="text-decoration: none" href="<%=url%>">
                <font face="Candara" size="2" color="#000000">Back</font></a></b>
        </div>            
    
    </body>
</html>
