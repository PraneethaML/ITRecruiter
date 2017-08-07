<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script language="javascript">
            function confirmsubmit()
            {
            var agree=confirm("Are you sure to wish to continue?");
            if(agree)
                return true;
            else
                return false;
            }
        </script>
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
        
    <div style="position: absolute; width: 517px; height: 100px; z-index: 1; left: 239px; top: 112px" id="layer1">
<table border="3" width="100%" bordercolor="#1AA4FF">
	<tr>
		<td align="center"><b><font color="#003559" face="Bell MT">User Name</font></b></td>
		<td align="center"><b><font color="#003559" face="Bell MT">Contact Person</font></b></td>
		<td align="center"><b><font color="#003559" face="Bell MT">Company Name</font></b></td>
		<td align="center"><b><font color="#003559" face="Bell MT">Action</font></b></td>
	</tr> 
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String prid,uname,compname,cname;
        %>
        <%
          Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from provider");
        while(rs.next())
            {
                prid=rs.getString(1);
                uname=rs.getString(2);
                compname=rs.getString(4);
                cname=rs.getString(5);
        %>
	<tr>
		<td align="center"><b><font face="Calibri" size="2"><%=uname%></font></b></td>
		<td align="center"><b><font face="Calibri" size="2"><%=compname%></font></b></td>
		<td align="center"><b><font face="Calibri" size="2"><%=cname%></font></b></td>
		<td align="center"><b><font face="Calibri" size="2">
		<a href="viewprovider.jsp?prid=<%=prid%>" style="text-decoration: none"><font color="#000000">View</font></a>/<a href="delproviders.jsp?prid=<%=prid%>"  onclick="return confirmsubmit()" style="text-decoration: none"><font color="#000000">Delete</font></a></font></b></td>
	</tr>
         <% 
         }
         %>
</table>
	</div>
         <div style="position: absolute; width: 157px; height: 118px; z-index: 2; left: 46px; top: 114px" id="layer2">
		<p align="left"><b>
		<a href="providermgmt.jsp" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Job Providers</font></a></b></p>
		<p align="left"><b>
		<a href="seekermgmt.jsp" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Job Seekers</font></a></b></p>
		<p align="left"><b>
		<a href="viewfeedback.jsp?utype=admin" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Feedback</font></a></b></div>
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 770px; top: 76px" id="layer3">
		<b><a href="adminlogin.jsp" style="text-decoration: none">
		<font face="Candara" size="2" color="#000000">Back</font></a></b></div>
    </body>
</html>
