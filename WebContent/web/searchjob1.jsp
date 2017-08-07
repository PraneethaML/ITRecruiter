<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Language" content="en-us">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">  
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 601px; top: 90px" id="layer7">
                <b><a style="text-decoration: none" href="searchjob.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
         <%!
                Connection con;
                Statement st;
                PreparedStatement pst;
                ResultSet rs;
                String skills,cntry,cname,cname1,conname,dept,phone,addr,country;
                int expinmths,i=1;
         %>       
    	<div style="position: absolute; width: 388px; height: 122px; z-index: 1; left: 113px; top: 99px" id="layer1">            
         <%
                cname=request.getParameter("cname");
                    
                skills=request.getParameter("skills");
                    
                cntry=request.getParameter("country");
        %>        
         <div style="position: absolute; width: 606px; height: 31px; z-index: 2; left: -101px; top: -77px" id="layer2">
			<p align="center"><font color="#CE892B"><strong><u>Your Search Has 
			Been Executed As Per The Following Criteria... </u></strong></font>
			</p>
			<p align="center">
			<font size="2" face="Arial Narrow">			
			<img border="0" src="Images/arrow-red.gif" width="12" height="9"><b>&nbsp;Company 
			: </b> <font color="black"><%=cname%></font>&nbsp;&nbsp;<img border="0" src="Images/arrow-red.gif" width="12" height="9">&nbsp;</font>
                        <font size="2"><b><font face="Arial Narrow"> Skills 	:
			</font></b>
                        <font face="Arial Narrow"> <font color="black"><%=skills%></font>&nbsp;&nbsp;
			<img border="0" src="Images/arrow-red.gif" width="12" height="9"></font><b><font face="Arial Narrow">&nbsp;Country 
			: </font></b></font><font face="Arial Narrow"> 
			<font color="black" size="2"><%=cntry%></font><b><font size="2">
			</font></b> </font><b>
                        </div>
        <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                st=con.createStatement();
                if(cname != null && skills.equals("") && cntry.equals(""))
                {
                    rs=st.executeQuery("select * from provider where lower(cname) like '%"+cname.toLowerCase()+"%'");
                }
                else if(cname.equals("") && skills!=null && cntry.equals(""))
                {
                    rs=st.executeQuery("select * from provider where lower(dept) like '%"+skills.toLowerCase()+"%'");
                } 
                else if(cname.equals("") && skills.equals("") && cntry!=null)
                {
                    rs=st.executeQuery("select * from provider where lower(country) like '%"+cntry.toLowerCase()+"%'");
                } 
                else
                {
                    rs=st.executeQuery("select * from provider where lower(dept) like '%"+skills.toLowerCase()+"%'or lower(cname) like '%"+cname.toLowerCase()+"%' or  country='"+cntry+"'");
                }
                while(rs.next())
                {
                    cname1=rs.getString(4);
                    conname=rs.getString(5);
                    dept=rs.getString(7);
                    phone=rs.getString(9);
                    addr=rs.getString(11);
                    country=rs.getString(12);
       %>
                <font face="Tahoma" size="2" color="#CE892B"><%=i%></font>
                <table border="2" width="100%" id="table1" bordercolor="#91C8FF">
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Company</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=cname1%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Contact Person</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=conname%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">
                                Department</font></b></td>
                                <td><b>
				<font face="Tahoma" size="2" color="#59ACFF"><%=dept%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Contact Number</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=phone%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Address</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=addr%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Country 
                                </font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=country%></font></b></td>
                        </tr>
                </table>
                <br>
        <% 
        i++;
        }
        con.close();
        %>
            </div>       
    </body>
</html>
