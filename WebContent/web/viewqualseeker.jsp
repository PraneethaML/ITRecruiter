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
        <div style="position: absolute; width: 518px; height: 228px; z-index: 1; left: 201px; top: 72px" id="layer1">
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        int exp;
        String uid,uname,fname,lname,gen,addr,city,cntry,state,qual,tech,descntry,email,phn,mobile;
        Date dob;
        %>
        <%
        uname=request.getParameter("uname");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from userreg where un='"+uname+"'");
        if(rs.next())
        {
            uname=rs.getString(1);
            fname=rs.getString(4);
            lname=rs.getString(5);
            gen=rs.getString(6);
            dob=rs.getDate(7);
            addr=rs.getString(8);
            city=rs.getString(9);
            cntry=rs.getString(10);
            state=rs.getString(11);
            qual=rs.getString(12);
            tech=rs.getString(13);
            exp=rs.getInt(14);
            descntry=rs.getString(15);
            phn=rs.getString(16);
            email=rs.getString(17);
            mobile=rs.getString(18);
        %>
        
                     <table border="0" width="100%" id="table1" height="272">
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">First Name</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=fname%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">Last Name</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=lname%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">User Name</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=uname%></font></b></td>
    </tr>
    <tr>
    <td width="145"><b><font size="2" face="Tahoma">Gender</font></b></td>
    <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=gen%></font></b></td>
    <td><b><font face="Tahoma" size="2">Date of Birth</font></b></td>
    <td width="125"><font face="Tahoma" size="2" color="#0065A8"><b><%=dob%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Address Lane</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=addr%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">City</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=city%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Country</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=cntry%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">State</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=state%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Highest Qualification</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=qual%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">Technology</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=tech%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Experience</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=exp%>&nbsp;</font><font face="Tahoma" size="2">Months</font></b></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Desired Country</font></b></td>
        <td width="128"> <b><font face="Tahoma" size="2" color="#0065A8"> <%=descntry%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">Land Phone</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=phn%></b></font></td>
    </tr>
    <tr>
        <td width="145"><b><font size="2" face="Tahoma">Email-ID</font></b></td>
        <td width="128"><b><font face="Tahoma" size="2" color="#0065A8"><%=email%></font></b></td>
        <td width="97"><b><font size="2" face="Tahoma">Mobile 
        Number</font></b></td>
        <td><font face="Tahoma" size="2" color="#0065A8"><b><%=mobile%></b></font></td>
    </tr>
    </table>
           <% 
           }
           %>
    </div>
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 718px; top: 52px" id="layer3">
		<b><a href="examMgmt.jsp" style="text-decoration: none">
		<font face="Candara" size="2" color="#000000">Back</font></a></b></div>
    </body>
</html>
