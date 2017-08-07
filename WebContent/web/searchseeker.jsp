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
        <form action="searchseeker1.jsp" method="post" name="overseas">  
            
            <div style="position: absolute; width: 257px; height: 37px; z-index: 4; left: 316px; top: 65px" id="layer4">
                <b><font face="Book Antiqua" size="5" color="#1AA4FF">Search Job 
            Seeker</font></b></div>
            <div style="position: absolute; width: 445px; height: 102px; z-index: 5; left: 251px; top: 138px" id="layer5">
                <table border="0" width="100%" id="table1">
                    <tr>
                        <td width="162"><b>
                        <font face="Tahoma" size="2" color="#808080">Skills</font></b></td>
                        <td>
                        <input type="text" name="skills" size="20" tabindex="1"></td>
                    </tr>
                    <tr>
                        <td width="162"><b>
                                <font face="Tahoma" size="2" color="#808080">Industry 
                        Type</font></b></td>
                        <td>
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
                        </select></td>
                    </tr>
                    <tr>
                        <td width="162"><b>
                                <font face="Tahoma" size="2" color="#808080">Experience (in months)</font></b></td>
                        <td>
                        <input type="text" name="exp" size="20" tabindex="3"></td>
                    </tr>
                    <tr>
                        <td width="162"><b>
                        <font face="Tahoma" size="2" color="#808080">Country</font></b></td>
                        <td width="207"> 
				            <select id='DescCountryID' name='descountry' size="1" tabindex="5"></select>
				        	<script type="text/javascript">initDescCountry('IN');</script>
				        </td> 
				    </tr>
                </table>
            </div>
            <div style="position: absolute; width: 156px; height: 28px; z-index: 6; left: 375px; top: 260px" id="layer6">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
						<input type="submit" value="Submit" name="B1" tabindex="6"></td>
                        <td>
						<input type="reset" value="Reset" name="B2" tabindex="7"></td>
                    </tr>
                </table>
            </div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 702px; top: 105px" id="layer7">
                <b><a style="text-decoration: none" href="providerlogin.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
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
