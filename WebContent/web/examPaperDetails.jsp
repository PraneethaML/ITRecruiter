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
           <form action="paperDetailsToDB.jsp" method="post" name="itcon">
               <div style="position: absolute; width: 190px; height: 118px; z-index: 2; left: 13px; top: 132px" id="layer2" align="left">
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
               
               <div style="position: absolute; width: 222px; height: 37px; z-index: 4; left: 343px; top: 23px" id="layer4">
                   <b><font face="Book Antiqua" size="5" color="#1AA4FF">Exam 
               Management</font></b></div>
               <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 729px; top: 53px" id="layer3">
                   <b><a style="text-decoration: none" href="examMgmt.jsp">
               <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
               <%!
               Connection con;
               Statement st;
               PreparedStatement pst;
               ResultSet rs;
               String prid,cname;
               %>    
               <%
               prid=(String)session.getAttribute("prid");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
               st=con.createStatement();  
               rs=st.executeQuery("select cname from provider where prid='"+prid+"'");
               if(rs.next())
               {
               cname=rs.getString(1);
               %>
               <div style="position: absolute; width: 329px; height: 152px; z-index: 5; left: 294px; top: 134px" id="layer5">
                   <table border="0" width="100%" id="table1">
                       <tr>
                           <td width="134"><b><font face="Verdana" size="2">Company</font></b></td>
                           <td colspan="2"><b>
                           <font face="Verdana" size="2" color="#CE892B"><%=cname%></font></b></td>
                       </tr>
                       <tr>
                           <td width="134"><b><font face="Verdana" size="2">No. of Questions</font></b></td>
                           <td colspan="2">
                           <input type="text" name="numqs" size="20" tabindex="1"></td>
                       </tr>
                       <tr>
                           <td width="134"><b><font face="Verdana" size="2">Technology</font></b></td>
                           <td colspan="2">
                           <input type="text" name="tech" size="20" tabindex="2"></td>
                       </tr>
                       <tr>
                           <td width="134"><b><font face="Verdana" size="2">Exam Date</font></b></td>
                           <td colspan="2">
                                <input type="text" name="dob" size="20" tabindex="3"></font>
                                <script language="JavaScript">
                                                                new tcal ({'formname': 'itcon','controlname': 'dob'});
                                </script></td>
                       </tr>
                       <tr>
                           <td width="134">&nbsp;</td>
                           <td colspan="2">&nbsp;</td>
                       </tr>
                       <tr>
                           <td width="134">&nbsp;</td>
                           <td>
                           <input type="submit" value="Submit" name="B1" tabindex="4"></td>
                           <td>
                           <input type="reset" value="Reset" name="B2" tabindex="5">
                           <input type="hidden" value="<%=prid%>" name="prid">
                           <input type="hidden" value="<%=cname%>" name="cname"></td>
                       </tr>
                   </table>
               </div>
               <% 
               }
               %>
           </form>
       </body>
   </html>   