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
               <div style="position: absolute; width: 400px; height: 100px; z-index: 5; left: 258px; top: 129px" id="layer5">
                    <table border="1" width="100%" bordercolor="#C6E8FF" id="table1">
                            <tr>
                                    <td align="center"><b>
                                    <font face="Verdana" size="2" color="#CE892B">Technology</font></b></td>
                                    <td align="center"><b>
                                    <font face="Verdana" size="2" color="#CE892B">Num. of 
                                    Questions</font></b></td>
                                    <td align="center"><b>
                                    <font face="Verdana" size="2" color="#CE892B">Action</font></b></td>
                            </tr>            
               <%!
               Connection con;
               Statement st;
               PreparedStatement pst;
               ResultSet rs;
               String prid,tech,cname,paperid;
               int numofqs,time;
               %>    
               <%
               prid=(String)session.getAttribute("prid");
               Class.forName("oracle.jdbc.driver.OracleDriver");
               con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
               st=con.createStatement();  
               rs=st.executeQuery("select * from paperdetails where prid='"+prid+"' and status='Not Prepared'");
               while(rs.next())
               {
               cname=rs.getString(2);
               paperid=rs.getString(3);
               numofqs=rs.getInt(4);
               tech=rs.getString(5);
               time=rs.getInt(6);
               session.setAttribute("numofqs",new Integer(numofqs));
               %>
                            <tr>
                                    <td align="center"><b><font face="Verdana" size="1"><%=tech%></font></b></td>
                                    <td align="center"><b><font face="Verdana" size="1"><%=numofqs%></font></b></td>
                                    <td align="center"><b><font face="Verdana" size="1">
                                    <a href="prepareQs.jsp?tech=<%=tech%>&numofqs=<%=numofqs%>&cname=<%=cname%>&paperid=<%=paperid%>"><font color="#000000">Prepare Questions</font></a></font></b></td>
                            </tr>
              <% 
              }
              %>
                    </table>
    </div>
        