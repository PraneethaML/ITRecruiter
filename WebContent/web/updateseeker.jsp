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
        <script language="javascript" src="JS/form_valid.js"></script>
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">        
    	<form action="updateseeker1.jsp" method="post" name="overseas" onsubmit="return checkUpdateSeeker()">
        <div style="position: absolute; width: 646px; height: 228px; z-index: 1; left: 199px; top: 67px" id="layer1">
        <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        Date dob;
        String userid,un,pwd,fn,ln,gen,addr,city,country,state,qual,tech,expmoths,descountry,phone,email,mobile,indtype,skills;
        %>
        <%
        userid=(String)session.getAttribute("userid");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from userreg where userid='"+userid+"'");
        if(rs.next())
        {                    
        un=rs.getString(1);
        pwd=rs.getString(2);
        fn=rs.getString(4);
        ln=rs.getString(5);
        gen=rs.getString(6);
        dob=rs.getDate(7);
        addr=rs.getString(8);
        city=rs.getString(9);
        country=rs.getString(10);
        state=rs.getString(11);
        qual=rs.getString(12);
        tech=rs.getString(13);
        expmoths=rs.getString(14);
        descountry=rs.getString(15);
        phone=rs.getString(16);
        email=rs.getString(17);
        mobile=rs.getString(18);
        indtype=rs.getString(19);
        skills=rs.getString(20);
        %>       
        <table border="0" width="100%" id="table1" height="272">
        <tr>
            <td><b><font size="2" face="Tahoma">First Name</font></b></td>
            <td width="208"><input type="text" name="fn" size="20" value="<%=fn%>"></td>
            <td width="95"><b><font size="2" face="Tahoma">Last Name</font></b></td>
            <td><input type="text" name="ln" size="20" value="<%=ln%>"></td>
        </tr>
        <tr>
            <td><b><font size="2" face="Tahoma">User Name</font></b></td>
            <td width="208"><b><font face="Tahoma" size="2" color="#CE892B"><%=un%></font></b></td>
            <td width="95"><b><font size="2" face="Tahoma">Password</font></b></td>
            <td><input type="password" name="pwd" size="20" value="<%=pwd%>"></td>
        </tr>
        <tr>
        <td><b><font size="2" face="Tahoma">Gender</font></b></td>
        <td width="208"><b><font face="Tahoma" size="2" color="#CE892B"><%=gen%></font></b></td>
        <td width="95"><b><font size="2" face="Tahoma">Date of Birth</font></b></td>
        <td><b><font face="Tahoma" size="2" color="#CE892B"><%=dob%>
        </font></b>
        </td>
        </tr>
        <tr>
            <td><b><font size="2" face="Tahoma">Address Lane</font></b></td>
            <td width="208"> <input type="text" name="addr" size="20" value="<%=addr%>"></td>
            <td width="95"><b><font size="2" face="Tahoma">City</font></b></td>
            <td>
            <input type="text" name="city" size="20" value="<%=city%>"></td>
        </tr>
        <tr>
            <td rowspan="2"><b><font size="2" face="Tahoma">Country</font></b></td>
            <td width="208"><b><font face="Tahoma" size="2" color="#CE892B"><%=country%></font></b>&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td width="95" rowspan="2"><b><font size="2" face="Tahoma">State</font></b></td>
            <td><b><font face="Tahoma" size="2" color="#CE892B"><%=state%></font></b>&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td width="208"><select id='countrySelect' name='country' onchange='populateState()'></select></td>
            <td>
                <select id='stateSelect' name='state'></select>
                <script type="text/javascript">initCountry('IN'); </script>
            </td>
        </tr>
        <tr>
            <td><b><font size="2" face="Tahoma">Highest Qualification</font></b></td>
            <td width="208"><select size="1" name="qual">
                    <option value="<%=qual%>" selected><%=qual%></option>
                    <option value="M.Tech">M.Tech</option>
                    <option value="M.sc">M.sc</option>
                    <option value="B.Tech">B.Tech</option>
                    <option value="B.sc">B.sc</option>
                    <option value="B.Com">B.Com</option>
                    <option value="B.Com(Computers)">B.Com(Computers)</option>
                    <option>B.A</option>
                    <option value="Inter">Inter</option>
                    <option value="S.S.C">S.S.C</option>
            </select></td>
            <td width="95"><b><font size="2" face="Tahoma">Technology</font></b></td>
            <td><select size="1" name="tech">
                    <option value="<%=tech%>" selected><%=tech%></option>
                    <option value="Java">Java</option>
                    <option value=".Net">.Net</option>
                    <option value="Testing">Testing</option>
                    <option value="SAP">SAP</option>
                    <option value="Networking">Networking</option>
                    <option value="PHP">PHP</option>
            </select></td>
        </tr>
        <tr>
            <td width="23%"><b><font size="2" face="Tahoma">Industry Type</font></b></td>
            <td width="208">
                <select size="1" name="indtype" tabindex="2">
                    <option value="<%=indtype%>" selected><%=indtype%></option>
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
                </select>
            </td>
            <td width="95"><b><font face="Tahoma" size="2">Skills</font></b></td>
            <td><textarea rows="2" name="skills" cols="20" value="<%=skills%>"><%=skills%></textarea></td>
        </tr>
        <tr>
            <td><b><font size="2" face="Tahoma">Experience</font></b></td>
            <td colspan="3"><font face="Tahoma"><b>
			<font size="2" color="#CE892B"><%=expmoths%>&nbsp;</font></b><font color="#CE892B">&nbsp;&nbsp;
                            <select size="1" name="years" style="font-weight: 700">
                    <option value="Select">Select</option>
                    <%
                    for(int i=0;i<=30;i++)
                    {
                    %>
                    <option value="<%=i%>"><%=i%></option>
                    <%
                    }
                    %>
                </select></font><b><font size="1">(Yrs) </font></b>
                <font color="#CE892B">
                <select size="1" name="months" style="font-weight: 700">
                    <option value="Select">Select</option>
                    <%
                    for(int i=0;i<=11;i++)
                    {
                    %>
                    <option value="<%=i%>"><%=i%></option>
                    <%
                    }
                    %>
            </select></font></font><b><font size="1" face="Tahoma">(Months)</font></b></td>
        </tr>
        <tr>
            <td><b><font size="2" face="Tahoma">Desired Country</font></b></td>
            <td colspan="2"><b><font face="Tahoma" size="2" color="#CE892B"><%=descountry%></font></b>&nbsp;&nbsp;&nbsp;&nbsp;
                <font face="Tahoma"><font color="#CE892B"> 
                <select id='DescCountryID' name='descountry' style="font-weight: 700">
                </select></font><b><font size="2" color="#CE892B">
            	<script type="text/javascript">initDescCountry('IN'); </script>
				</font></b></font>
            </td>
        </tr>
        <tr>
            <td width="95"><b><font size="2" face="Tahoma">Land Phone</font></b></td>
            <td>
            <input type="text" name="phn" size="20" value="<%=phone%>"></td>
            <td width="95">&nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        
        <tr>
            <td><b><font size="2" face="Tahoma">Email-ID</font></b></td>
            <td width="208">
            <input type="text" name="email" size="33" value="<%=email%>"></td>
            <td width="95"><b><font size="2" face="Tahoma">Mobile 
            Number</font></b></td>
            <td>
            <input type="text" name="mobile" size="20" value="<%=mobile%>"></td>
        </tr>
        
        <tr>
            <td height="47">&nbsp;</td>
            <td width="208" height="47">
            <p align="center"><input type="submit" value="Update" name="B1"></td>
            <td width="95" height="47"><input type="reset" value="Reset" name="B2"></td>
            <td height="47">&nbsp;</td>
        </tr>
        </table>
     <% 
        }
     %>
        </div>
        <div style="position: absolute; width: 222px; height: 37px; z-index: 4; left: 294px; top: 24px" id="layer4">
                <b><font size="5" face="Book Antiqua" color="#1AA4FF">Update Profile</font></b>
        </div>
        <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 693px; top: 47px" id="layer3">
                <b><a style="text-decoration: none" href="seekerlogin.jsp">
                <font face="Candara" size="2" color="#000000">Back</font></a></b>
        </div>            
  		</form>
    
    <div style="position: absolute; width: 179px; height: 118px; z-index: 2; left: 16px; top: 156px" id="layer2" align="left">
		<b>
		<a style="text-decoration: none" href="updateseeker.jsp">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b><p>
		<a href="searchjob.jsp" style="text-decoration: none"><b>
		<font face="Book Antiqua" size="4" color="#1AA4FF">Search for Job</font></b></a><p>
		<b><a href="Exam Management.jsp" style="text-decoration: none">
		<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p>
		<b><a href="sendfeedback.jsp" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">
		Send Feedback</font></a></b></div>
    </body>
</html>
