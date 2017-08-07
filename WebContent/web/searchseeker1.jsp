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
                <b><a style="text-decoration: none" href="searchseeker.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
         <%!
                Connection con;
                Statement st;
                PreparedStatement pst;
                ResultSet rs;
                String cntry,prid,prname,uname,pwd,qual,tech,email,mobile,indtype,skills,expinmths1,descntry;
                int expinmths,i=1;
         %>       
    	<div style="position: absolute; width: 388px; height: 122px; z-index: 1; left: 113px; top: 99px" id="layer1">
            
         <%
                skills=request.getParameter("skills");
                if(skills.equals(null))
                    skills="";
                else                    
                    skills=request.getParameter("skills");
                indtype=request.getParameter("indtype");
                expinmths1=request.getParameter("exp");
                if(expinmths1=="")
                   {
                    expinmths=0;
                   }
                else
                   {
                    expinmths=Integer.parseInt(expinmths1);                
                   }
                cntry=request.getParameter("descountry");
        %>        
         <div style="position: absolute; width: 606px; height: 31px; z-index: 2; left: -101px; top: -77px" id="layer2">
			<p align="center"><font color="#CE892B"><strong><u>Your Search Has 
			Been Executed As Per The Following Criteria... </u></strong></font>
			</p>
			<p align="center">
			<font size="2" face="Arial Narrow">
			<img border="0" src="Images/arrow-red.gif" width="12" height="9">&nbsp;</font><font size="2"><b><font face="Arial Narrow"> Skills 	:
			</font></b>
                        <font face="Arial Narrow"> <font color="black"><%=skills%></font>&nbsp;&nbsp;
			<img border="0" src="Images/arrow-red.gif" width="12" height="9"><b>&nbsp;Industry 
			Type : </b>  <font color="black"><%=indtype%></font>&nbsp;&nbsp;
			<img border="0" src="Images/arrow-red.gif" width="12" height="9"><b>&nbsp;Exp (in months) 
			: </b> <font color="black"><%=expinmths%></font>&nbsp;&nbsp;
			<img border="0" src="Images/arrow-red.gif" width="12" height="9"></font><b><font face="Arial Narrow">&nbsp;Country 
			: </font></b></font><font face="Arial Narrow"> 
			<font color="black" size="2"><%=cntry%></font><b><font size="2">
			</font></b> </font><b>
         </div>
        <%
                Class.forName("oracle.jdbc.driver.OracleDriver");
                con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
                st=con.createStatement();
                if(skills != null && expinmths1.equals(""))
                {
                    rs=st.executeQuery("select * from userreg where lower(skills) like '%"+skills.toLowerCase()+"%'");
                }    
                else if(skills.equals("") && indtype != null && expinmths1.equals("") && cntry.equals(""))
                {
                    rs=st.executeQuery("select * from userreg where indtype like '%"+indtype+"%'");
                }     
                else if(skills.equals("") && indtype.equals("") && expinmths1 != null && cntry.equals(""))
                {
                    rs=st.executeQuery("select * from userreg where expmoths="+expinmths);
                }      
                else if(skills.equals("") && indtype.equals("") && expinmths1.equals("") && cntry != null)
                {
                    rs=st.executeQuery("select * from userreg where descountry='"+cntry+"'");
                }   
                else             
                rs=st.executeQuery("select * from userreg where lower(skills) like '%"+skills.toLowerCase()+"%' or indtype like '%"+indtype+"%'  or descountry='"+cntry+"' or expmoths="+expinmths);
                while(rs.next())
                {
                uname=rs.getString(1);
                pwd=rs.getString(3);
                qual=rs.getString(12);
                tech=rs.getString(13);
                expinmths=rs.getInt(14);
                descntry=rs.getString(15);
                email=rs.getString(17);
                mobile=rs.getString(18);
                indtype=rs.getString(19);
                skills=rs.getString(20);
       %>
                <font face="Tahoma" size="2" color="#CE892B"><%=i%></font>
                <table border="2" width="100%" id="table1" bordercolor="#91C8FF">
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Name</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=uname%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Desired Job Location</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=descntry%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">
                                Qualification</font></b></td>
                                <td><b>
				<font face="Tahoma" size="2" color="#59ACFF"><%=qual%></font></b>
                                </td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Skills</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=skills%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Industry 
                                Type</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=indtype%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Experience 
                                (in months)</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=expinmths%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Email Id</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=email%></font></b></td>
                        </tr>
                        <tr>
                                <td width="192"><b>
                                <font face="Tahoma" size="2" color="#808080">Mobile</font></b></td>
                                <td><b>
                                    <font face="Tahoma" size="2" color="#59ACFF"><%=mobile%></font></b></td>
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
