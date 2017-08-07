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
        <form action="addvacant1.jsp" method="post" name="overseas">
            
            <div style="position: absolute; width: 752px; height: 253px; z-index: 3; left: 206px; top: 81px" id="layer3">
                <table border="0" width="100%" id="table1">
                    <%!
                    Connection con;
                    Statement st;
                    PreparedStatement pst;
                    ResultSet rs;
                    String prid,id,uname;
                    %>
                    <%
                    prid=(String)session.getAttribute("prid");
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                    st=con.createStatement();        
                    rs=st.executeQuery("select * from provider where prid='"+prid+"'");
                    if(rs.next())
                    {
                    id=rs.getString(1);
                    uname=rs.getString(2);
                    %>
                    <tr>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Name</font></b></td>
                        <td width="24%"><font color="#CE892B" face="Tahoma">
                                <input type="hidden" name="uname" size="20" value="<%=uname%>" style="font-weight: 700">
                        </font><b><font color="#CE892B" size="2" face="Tahoma"><%=uname%></font></b></td>
                    </tr>
                    <% 
                    }
                    %>
                    <tr>
                        <td width="28%"><b><font face="Tahoma" size="2" color="#4D4D4D">Company Name</font></b></td>
                        <td width="22%">
						<input type="text" name="compname" size="20" tabindex="1"></td>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Industry Type</font></b></td>
                        <td width="24%">
                            <select size="1" name="indtype" tabindex="2">
                                <option value="Management" selected="selected">Management</option>
                                <option value="Accounting / Banking">Accounting / Banking</option>
                                <option value="Administrative">Administrative</option>
                                <option value="Human Resources">Human Resources</option>
                                <option value="Sales">Sales</option>									
                                <option value="Computers / IT">Computers / IT</option>								
                                <option value="Consulting">Consulting</option>
                                <option value="Advertising / PR / Marketing">Advertising / PR / Marketing</option>
                                <option value="Information Technology / Internet">Information Technology / Internet</option>
                                <option value="Telecom / Communications">Telecom / Communications</option>
                                <option value="Transportation">Transportation</option>
                                <option value="Manufacturing / Agriculture">Manufacturing / Agriculture</option>
                                <option value="Legal and Law Related">Legal and Law Related</option>
                                <option value="Warehousing / Logistics">Warehousing / Logistics</option>
                                <option value="Tourism / Service">Tourism / Service</option>									
                                <option value="Construction / Real Estate">Construction / Real Estate</option>
                                <option value="Healthcare / Pharmaceutical">Healthcare / Pharmaceutical</option>
                                <option value="Security">Security</option>
                                <option value="Insurance">Insurance</option>
                                <option value="Mass Media">Mass Media</option>
                                <option value="Education / Training">Education / Training</option>
                                <option value="Science / Culture / Arts">Science / Culture / Arts</option>
                                <option value="Services">Services</option>
                                <option value="Sports / Fitness">Sports / Fitness</option>									
                                <option value="Human Services">Human Services</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td width="28%"><b><font face="Tahoma" size="2" color="#4D4D4D">Location</font></b></td>
                        <td width="22%">
						<input type="text" name="loc" size="20" tabindex="3"></td>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Professional 
                        Experience</font></b></td>
                        <td width="24%">
						<input type="text" name="exp" size="20" tabindex="4"></td>
                    </tr>
                    <tr>
                        <td width="28%"><b><font face="Tahoma" size="2" color="#4D4D4D">Salary</font></b></td>
                        <td width="22%">
						<input type="text" name="sal" size="20" tabindex="5"></td>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Job Status</font></b></td>
                        <td width="24%">
						<select size="1" name="jobstatus" tabindex="6">
                                <option selected value="Any">Any</option>
                                <option value="Full-time">Full-time</option>
                                <option value="Part-time">Part-time</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td width="28%"><b>
						<font face="Tahoma" size="2" color="#4D4D4D">Desired 
						Candidate Profile</font></b></td>
                        <td width="22%">
						<textarea rows="2" name="reqcand" cols="15" tabindex="7"></textarea></td>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Job Description</font></b></td>
                        <td width="24%">
						<textarea rows="2" name="jobdescr" cols="20" tabindex="8"></textarea></td>
                    </tr>
                    <tr>
                        <td><b><font face="Tahoma" size="2" color="#4D4D4D">Web Site</font></b></td>
                        <td>
						<input type="text" name="website" size="20" tabindex="9"></td>
                    </tr>
                    <tr>
                        <td colspan="4"><b>
                                <font face="Tahoma" size="2" color="#CE892B">Contact 
                        Information</font></b></td>
                    </tr>
                    <tr>
                        <td width="28%" height="25"><b>
                                <font face="Tahoma" size="2" color="#4D4D4D">Contact Person 
                        Name</font></b></td>
                        <td width="22%" height="25">
						<input type="text" name="contperson" size="20" tabindex="10"></td>
                        <td width="23%" height="25"><b>
                        <font size="2" face="Tahoma" color="#4D4D4D">Phone</font></b></td>
                        <td width="24%" height="25">
						<input type="text" name="phn" size="20" tabindex="11"></td>
                    </tr>
                    <tr>
                        <td width="28%"><b><font face="Tahoma" size="2" color="#4D4D4D">Email Id</font></b></td>
                        <td width="22%">
						<input type="text" name="email" size="20" tabindex="12"></td>
                        <td width="23%"><b><font size="2" face="Tahoma" color="#4D4D4D">Address</font></b></td>
                        <td width="24%">
						<textarea rows="2" name="addr" cols="20" tabindex="13"></textarea></td>
                    </tr>
                </table>
            </div>
            
            <div style="position: absolute; width: 257px; height: 37px; z-index: 4; left: 411px; top: 24px" id="layer4">
                <b><font face="Book Antiqua" size="5" color="#1AA4FF">Add Vacancy 
            Details</font></b></div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 849px; top: 57px" id="layer5">
                <b><a style="text-decoration: none" href="providerlogin.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
            <div style="position: absolute; width: 159px; height: 40px; z-index: 5; left: 520px; top: 350px" id="layer6">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
						<input type="submit" value="Submit" name="B3" tabindex="14"></td>
                        <td>
						<input type="reset" value="Reset" name="B4" tabindex="15"></td>
                    </tr>
                </table>
            </div>
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
		<b>
		<a href="viewfeedback.jsp?utype=provider" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">View Feedback</font></a></b></div>
    
    </body>
</html>
