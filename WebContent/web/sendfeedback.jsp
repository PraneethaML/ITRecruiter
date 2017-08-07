<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function ismaxlength(obj)
            {
                var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
                if (obj.getAttribute && obj.value.length>mlength)
                obj.value=obj.value.substring(0,mlength)
            }
        </script>

    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
    <form action="sendfeedback1.jsp" method="post" name="overseas">
            <div style="position: absolute; width: 657px; height: 163px; z-index: 4; left: 199px; top: 152px" id="layer6">
                <table border="0" id="table1" width="659">
                    <tr>
                        <td><b><font face="Trebuchet MS" color="#59ACFF">
						Complaint/Grievances</font></b><font color="#59ACFF"><b><font size="4">
                        :</font></b></font></td>
                        <td width="469"><textarea rows="7" name="feedback" cols="56" onkeyup="return ismaxlength(this)"></textarea></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td width="469"><input type="submit" value="Submit Feedback" name="B1">&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Reset" name="B2"></td>
                    </tr>
                </table>
                <p>&nbsp;</p>
            <p><br></div>
        <div style="position: absolute; width: 179px; height: 37px; z-index: 4; left: 469px; top: 24px" id="layer4">
                <b><font face="Book Antiqua" size="5" color="#1AA4FF">Feedback</font></b>
        </div>
			<div style="position: absolute; width: 471px; height: 23px; z-index: 5; left: 351px; top: 120px" id="layer7">
				<p align="left"><font color="#CE892B">Please Submit your feed back (maximum length : 
                </font> 
                <font face="Times New Roman" color="#CE892B">450</font><font color="#CE892B"> characters </font> <b>
				<font color="#CE892B">only)
				</font>
				</b></div>
        <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 772px; top: 77px" id="layer3">
                <b><a style="text-decoration: none" href="seekerlogin.jsp">
                <font face="Candara" size="2" color="#000000">Back</font></a></b>
        </div>            
    
    <div style="position: absolute; width: 170px; height: 118px; z-index: 2; left: 16px; top: 156px" id="layer2" align="left">
		<b>
		<a style="text-decoration: none" href="updateseeker.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b><p>
		<a href="searchjob.jsp" style="text-decoration: none"><b>
		<font face="Book Antiqua" size="4" color="#1AA4FF">Search for Job</font></b></a><p>
		<b><a href="seekExamMgmt.jsp" style="text-decoration: none">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p>
		<b><a href="sendfeedback.jsp" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">
		Send Feedback</font></a></b></div>
    </form>
    </body>
</html>
