<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
    

   <%
   session.invalidate();
   response.setHeader("Cache-Control","no-cache"); 
   response.setHeader("Cache-Control","no-store"); 
   response.setDateHeader("Expires", 0); 
//   response.sendRedirect("home.jsp");
   %>


    <div style="position: absolute; width: 328px; height: 260px; z-index: 1; left: 44px; top: 95px" id="layer1">
<img border="0" src="Images/1622059v2147483647_350x350_Front.jpg" width="329" height="258"></div>
    
    <div style="position: absolute; width: 321px; height: 118px; z-index: 2; left: 399px; top: 163px" id="layer2">
		<p align="center"><b>
		<a href="providermgmt.jsp" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Job Providers</font></a></b></p>
		<p align="center"><b>
		<a href="seekermgmt.jsp" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Job Seekers</font></a></b></p>
		<p align="center"><b>
		<a href="viewfeedback.jsp?utype=admin" style="text-decoration: none">
		<font size="4" face="Book Antiqua" color="#1AA4FF">Feedback</font></a></b></div>
    
    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 748px; top: 295px" id="layer3">
		<b><font face="Candara" size="2">
		<a href="signin.jsp" style="text-decoration: none">
		<font color="#000000">Log Out</font></a></font></b></div>
    
    </body>
</html>
