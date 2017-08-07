<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="JS/country.js"></script>      
        <script language="JavaScript" src="JS/calendar_us.js"></script>
	<link rel="stylesheet" href="JS/calendar.css">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">        
        <form action="updateprovider1.jsp" method="post" name="overseas">
            <div style="position: absolute; width: 591px; height: 228px; z-index: 1; left: 218px; top: 67px" id="layer1">
                <%!
                Connection con;
                Statement st;
                PreparedStatement pst;
                ResultSet rs;
                String prid,uname,pwd,compname,contperson,desig,dept,email,phn,fax,addr,cntry,state,city,pin,emps;
                %>
                <%
                prid=(String)session.getAttribute("prid");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                st=con.createStatement();        
                rs=st.executeQuery("select * from provider where prid='"+prid+"'");
                if(rs.next())
                {
                uname=rs.getString(2);
                pwd=rs.getString(3);
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
                <table width="498" height="377" id="table3">
                    <tr>
                        <td width="189" height="26"><b>
                        <font size="2" face="Tahoma">User Name</font></b></td>
                        <td width="299" height="26"><b>
						<font color="#CE892B" face="Tahoma" size="2"><%=uname%>
                        </font></b><font face="Tahoma" color="#CE892B">
                        <input type="hidden" name="uname" value="<%=uname%>" style="font-weight: 700">
                    	</font>
                    </td>
                    </tr>
                    <tr>
                        <td width="189" height="26"><b>
                        <font size="2" face="Tahoma">Password</font></b></td>
                        <td width="299" height="26">
                        <input name="pwd" size="28" type="password" value="<%=pwd%>"></td>
                    </tr>
                    <tr>
                        <td width="189" height="1"><b>
                        <font size="2" face="Tahoma">Company Name</font></b></td>
                        <td width="299" height="1">
                        <input name="compname" size="37" type="text" value="<%=compname%>"></td>
                    </tr>
                    <tr>
                        <td width="189" height="14"><b>
                        <font size="2" face="Tahoma">Contact Person Name</font></b></td>
                        <td width="299" height="14">
                            <input name="contperson" size="28" type="text" value="<%=contperson%>">
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="19"><b>
                        <font size="2" face="Tahoma">Designation</font></b></td>
                        <td width="299" height="19">
                            <input name="desig" size="28" type="text" value="<%=desig%>">
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="26"><b>
                        <font size="2" face="Tahoma">Department</font></b></td>
                        <td width="299" height="26">
                            <input name="dept" size="28" type="text" value="<%=dept%>">
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="24"><b>
                        <font size="2" face="Tahoma">Number of Employees</font></b></td>
                        <td width="299" height="24">
                            <select size="1" name="emps">
                                <option value="<%=emps%>" selected><%=emps%></option>
                                <option value="<10">&lt;10</option>
                                <option value="11-25">11-25</option>
                                <option value="26-50">26-50</option>
                                <option value="51-100">51-100</option>
                                <option value="101-200">101-200</option>
                                <option value="201-500">201-500</option>
                                <option value="500+">500+</option>
                            </select>                                
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="28"><b>
                        <font size="2" face="Tahoma">Email Address</font></b></td>
                        <td width="299" height="28">
                        <input name="email" size="33" type="text" value="<%=email%>"></td>
                    </tr>
                    <tr>
                        <td width="189" height="24"><b><font size="2" face="Tahoma">
                        Phone</font></b></td>
                        <td width="299" height="24">
                            <input name="phn" size="24" type="text" value="<%=phn%>">
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="28"><b><font size="2" face="Tahoma">
                        Fax</font></b></td>
                        <td width="299" height="28">
                            <input name="fax" size="24" type="text" value="<%=fax%>">
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" width="189" height="21">
                            <b>
                        	<font size="2" face="Tahoma">&nbsp;Address</font></b></td>
                        <td colspan="3" width="299" height="40">
                            <textarea rows="3" name="addr" cols="30" value="<%=addr%>"><%=addr%></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="24"><b>
                        <font size="2" face="Tahoma">Country</font></b></td>
                        <td width="299" height="24"><font face="Tahoma"><b>
						<font size="2" color="#CE892B"><%=cntry%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						</font></b><font color="#CE892B"> 
						<select id='countrySelect' name='country' onchange='populateState()' style="font-weight: 700"></select></font><b><font size="2" color="#CE892B">
						</font></b></font>
                        </td>
                    </tr>
                    <tr>
                        <td width="189" height="25"><b>
                        <font size="2" face="Tahoma">State</font></b></td>
                        <td width="299" height="25">
                            <font face="Tahoma"><b>
							<font size="2" color="#CE892B">
                            <%=state%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </font></b><font color="#CE892B">
                            <select id='stateSelect' name='state' style="font-weight: 700"></select></font><b><font size="2" color="#CE892B">
                        <script type="text/javascript">initCountry('IN'); </script>
							</font></b></font></td>
                    </tr>
                    <tr>
                        <td width="189" height="24"><b>
						<font face="Tahoma" size="2">City</font></b></td>
                        <td width="299" height="24">
                        <input name="city" size="24" type="text" value="<%=city%>"></td>
                    </tr>
                    <tr>
                        <td width="189" height="24"><b>
                        <font size="2" face="Tahoma">PIN/ZIP</font></b></td>
                        <td width="299" height="24">
                            <input name="pin" size="24" type="text" value="<%=pin%>">
                        </td>
                    </tr>
                </table>
                <% 
                }
                %>
            </div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 693px; top: 47px" id="layer3">
                <b><a style="text-decoration: none" href="providerlogin.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
            
            <div style="position: absolute; width: 222px; height: 37px; z-index: 4; left: 294px; top: 24px" id="layer4">
            <b><font size="5" face="Book Antiqua" color="#1AA4FF">Update Profile</font></b></div>
            <div style="position: absolute; width: 90px; height: 112px; z-index: 5; left: 406px; top: 547px" id="layer5">
            <input type="submit" value="Update" name="update"></div>
        </form>
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
    
    </body>
</html>