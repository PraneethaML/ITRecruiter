<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
        <form action="searchjob1.jsp" method="post" name="overseas">
            <div style="position: absolute; width: 174px; height: 118px; z-index: 2; left: 14px; top: 129px" id="layer2" align="left">
                <b>
                    <a style="text-decoration: none" href="updateseeker.jsp">
                <font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b><p>
                <a href="searchjob.jsp" style="text-decoration: none"><b>
                <font face="Book Antiqua" size="4" color="#1AA4FF">Search for Job</font></b></a><p>
                <b><a href="seekExamMgmt.jsp" style="text-decoration: none">
				<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p>
            <b><a href="sendfeedback.jsp" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">Send Feedback</font></a></b></div>
            
            <div style="position: absolute; width: 165px; height: 37px; z-index: 4; left: 347px; top: 29px" id="layer4">
            <b><font face="Book Antiqua" size="5" color="#1AA4FF">Search Jobs</font></b></div>
            <div style="position: absolute; width: 296px; height: 77px; z-index: 5; left: 279px; top: 93px" id="layer5">
                <table border="0" width="101%" id="table1">
                    <tr>
                        <td width="133"><b>
                                <font face="Tahoma" size="2" color="#808080">Company 
                        Name</font></b></td>
                        <td>
                        <input type="text" name="cname" size="20" tabindex="1"></td>
                    </tr>
                    <tr>
                        <td width="133"><b>
						<font face="Tahoma" size="2" color="#808080">Skills</font></b></td>
                        <td>
                            <input type="text" name="skills" size="20" tabindex="2"></td>
                    </tr>
                    <tr>
                        <td width="133"><b>
						<font face="Tahoma" size="2" color="#808080">Country</font></b></td>
                        <td>
                        <input type="text" name="country" size="20" tabindex="3"></td>
                    </tr>
                    </table>
            </div>
            <div style="position: absolute; width: 156px; height: 28px; z-index: 6; left: 356px; top: 187px" id="layer6">
                <table border="0" width="100%" id="table2">
                    <tr>
                        <td>
                        <input type="submit" value="Submit" name="B1" tabindex="6"></td>
                        <td>
                        <input type="reset" value="Reset" name="B2" tabindex="7"></td>
                    </tr>
                </table>
            </div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 590px; top: 75px" id="layer7">
                <b><a style="text-decoration: none" href="seekerlogin.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
        </form>      	
    </body>
</html>
