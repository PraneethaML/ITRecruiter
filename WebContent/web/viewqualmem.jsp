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

    <div style="position: absolute; width: 190px; height: 118px; z-index: 2; left: 13px; top: 160px" id="layer2" align="left">
		<b>
		<a style="text-decoration: none" href="updateprovider.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b><p><b>
		<a style="text-decoration: none" href="addvacant.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Add New Vacancy</font></a></b></p>
		<p>
		<a href="searchseeker.jsp" style="text-decoration: none"><b>
		<font face="Book Antiqua" size="4" color="#1AA4FF">Search for Seekers</font></b></a><p>
		<b><a style="text-decoration: none" href="examMgmt.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p>
		&nbsp;<b><a href="viewfeedback.jsp?utype=provider" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">View Feedback</font></a></b></div>
    
            <div style="position: absolute; width: 222px; height: 37px; z-index: 4; left: 343px; top: 23px" id="layer4">
            <b><font face="Book Antiqua" size="5" color="#1AA4FF">Exam Management</font></b></div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 729px; top: 53px" id="layer3">
                <b><a style="text-decoration: none" href="providerlogin.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
            <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        int exp;
        String uname,tech;
        Date dob;
        %>
        <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from qual");
            %>
            <div style="position: absolute; width: 266px; height: 58px; z-index: 5; left: 325px; top: 160px" id="layer5">
<table border="0" width="100%" id="table1">
	<tr>
		<td><font face="Trebuchet MS"><b>User Name</b></font></td>
		<td><font face="Trebuchet MS"><b>Technology</b></font></td>
		<td><font face="Trebuchet MS"><b>Action</b></font></td>
	</tr>
        <%
        while(rs.next())
        {
            uname=rs.getString(1);
            tech=rs.getString(2);
        %>
	<tr>
		<td><%=uname%></td>
		<td><%=tech%></td>
                <td><a href="viewqualseeker.jsp?uname=<%=uname%>">View</a></td>
	</tr>
        <%
        }
        %>
</table>
	</div>

    </body>
</html>