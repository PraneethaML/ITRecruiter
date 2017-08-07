<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
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
   <div style="position: absolute; width: 190px; height: 118px; z-index: 2; left: 389px; top: 120px" id="layer2" align="left">
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
    
    
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 678px; top: 307px" id="layer3">
		<b><font face="Candara" size="2">
		<a href="signin.jsp" style="text-decoration: none">
		<font color="#000000">Log Out</font></a></font></b></div>
    <div style="position: absolute; width: 255px; height: 132px; z-index: 1; left: 59px; top: 142px" id="layer1">
		<p>
		<img border="0" src="Images/job_providers.gif" width="252" height="134"></div>
    
    </body>
</html>
