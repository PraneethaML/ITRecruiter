<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
     <%
   response.setHeader("Cache-Control","no-cache"); 
   response.setHeader("Cache-Control","no-store"); 
   response.setDateHeader("Expires", 0); 
//   response.sendRedirect("home.jsp");
   %>

    <div style="position: absolute; width: 294px; height: 132px; z-index: 1; left: 31px; top: 97px" id="layer1">
		<img border="0" src="Images/seeker.jpg" width="289" height="213"></div>
    
    <div style="position: absolute; width: 249px; height: 118px; z-index: 2; left: 344px; top: 133px" id="layer2">
		<p align="center"><b>
		<a style="text-decoration: none" href="updateseeker.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b></p>
		<p align="center">
		<a href="searchjob.jsp" style="text-decoration: none"><b>
		<font face="Book Antiqua" size="4" color="#1AA4FF">Search for Job</font></b></a><p align="center">
		<b><a href="seekExamMgmt.jsp" style="text-decoration: none">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p align="center">
		<b><a href="sendfeedback.jsp" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">Send Feedback</font></a></b></div>
    
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 619px; top: 287px" id="layer3">
		<b><font face="Candara" size="2">
		<a href="signin.jsp" style="text-decoration: none">
		<font color="#000000">Log Out</font></a></font></b></div>
        
    </body>
</html>
