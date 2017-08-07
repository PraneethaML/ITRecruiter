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
    <div style="position: absolute; width: 404px; height: 228px; z-index: 1; left: 285px; top: 78px" id="layer1">
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String prid,uname,compname,contperson,desig,dept,email,phn,fax,addr,cntry,state,city,pin,emps;
        %>
        <%
        prid=request.getParameter("prid");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from provider where prid='"+prid+"'");
        if(rs.next())
        {
            uname=rs.getString(2);
            compname=rs.getString(4);
            contperson=rs.getString(5);
            desig=rs.getString(6);
            dept=rs.getString(7);
            email=rs.getString(8);
            phn=rs.getString(9);
            fax=rs.getString(10);
            addr=rs.getString(11);
            cntry=rs.getString(12);
            state=rs.getString(13);
            city=rs.getString(14);
            pin=rs.getString(15);
            emps=rs.getString(16);
        %>
        
                    <table width="402" height="316" id="table3">
                        <tr>
                            <td width="177" height="26"><b><font face="Tahoma">
                            <font size="2">User Name</font></font></b></td>
                            <td colspan="3" width="215" height="26">
                            <font face="Tahoma" size="2" color="#0065A8">
                            <%=uname%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="1"><b><font face="Tahoma">
                            <font size="2">Company Name</font></font></b></td>
                            <td colspan="3" width="215" height="1">
							<font face="Tahoma" size="2" color="#0065A8"><%=compname%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="14"><b><font face="Tahoma">
                            <font size="2">Contact Person Name</font></font></b></td>
                            <td colspan="3" width="215" height="14">
							<font face="Tahoma" size="2" color="#0065A8"><%=contperson%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="19"><b><font face="Tahoma">
                            <font size="2">Designation</font></font></b></td>
                            <td colspan="3" width="215" height="19">
							<font face="Tahoma" size="2" color="#0065A8"><%=desig%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="18"><b><font face="Tahoma">
                            <font size="2">Department</font></font></b></td>
                            <td colspan="3" width="215" height="18">
							<font face="Tahoma" size="2" color="#0065A8"><%=dept%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="22"><b><font face="Tahoma">
                            <font size="2">Number of Employees</font></font></b></td>
                            <td colspan="3" width="215" height="22">
							<font face="Tahoma" size="2" color="#0065A8"><%=emps%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="23"><b><font face="Tahoma">
                            <font size="2">Email Address</font></font></b></td>
                            <td colspan="3" width="215" height="23">
							<font face="Tahoma" size="2" color="#0065A8"><%=email%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="20"><b><font size="2" face="Tahoma">
                            Phone</font></b></td>
                            <td colspan="3" width="215" height="20">
							<font face="Tahoma" size="2" color="#0065A8"><%=phn%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="24"><b><font size="2" face="Tahoma">
                            Fax</font></b></td>
                            <td colspan="3" width="215" height="24">
							<font face="Tahoma" size="2" color="#0065A8"><%=fax%></font></td>
                        </tr>
                        <tr>
                            <td valign="top" width="177" height="21">
                            <b>
                            <font face="Tahoma"><font size="2">&nbsp;Address</font></font></b></td>
                            <td colspan="3" width="215" height="21">
							<font face="Tahoma" size="2" color="#0065A8"><%=addr%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="26"><b>
                            <font size="2" face="Tahoma">Country</font></b></td>
                            <td width="98" height="26">
							<font face="Tahoma" size="2" color="#0065A8"><%=cntry%></font></td>
                            <td width="46" height="26"><b>
							<font face="Tahoma" size="2">City </font></b>
                            </td>
                            <td width="65" height="26">
							<font face="Tahoma" size="2" color="#0065A8"><%=city%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="25"><b>
                            <font size="2" face="Tahoma">State</font></b></td>
                            <td colspan="3" width="215" height="25">
							<font face="Tahoma" size="2" color="#0065A8"><%=state%></font></td>
                        </tr>
                        <tr>
                            <td width="177" height="28"><b><font face="Tahoma">
                            <font size="2">PIN/ZIP</font></font></b></td>
                            <td colspan="3" width="215" height="28">
							<font face="Tahoma" size="2" color="#0065A8"><%=pin%></font></td>
                        </tr>
                    </table>
           <% 
           }
           %>
    </div>
    <div style="position: absolute; width: 157px; height: 118px; z-index: 2; left: 46px; top: 114px" id="layer2">
        <p align="left"><b>
        <a href="providermgmt.jsp" style="text-decoration: none">
        <font size="4" face="Book Antiqua" color="#1AA4FF">Job Providers</font></a></b></p>
        <p align="left"><b>
        <a href="seekermgmt.jsp" style="text-decoration: none">
        <font size="4" face="Book Antiqua" color="#1AA4FF">Job Seekers</font></a></b></p>
        <p align="left"><b>
        <a href="viewfeedback.jsp" style="text-decoration: none">
        <font size="4" face="Book Antiqua" color="#1AA4FF">Feedback</font></a></b>
    </div>
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 718px; top: 52px" id="layer3">
		<b><a href="providermgmt.jsp" style="text-decoration: none">
		<font face="Candara" size="2" color="#000000">Back</font></a></b></div>
    </body>
</html>
