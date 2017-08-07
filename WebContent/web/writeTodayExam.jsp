<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>    
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
            <div style="position: absolute; width: 174px; height: 118px; z-index: 2; left: 14px; top: 129px" id="layer2" align="left">
                <b>
                    <a style="text-decoration: none" href="updateseeker.jsp">
                <font face="Book Antiqua" size="4" color="#1AA4FF">Update Profile</font></a></b><p>
                <a href="searchjob.jsp" style="text-decoration: none"><b>
                <font face="Book Antiqua" size="4" color="#1AA4FF">Search for Job</font></b></a><p>
                <b><a href="seekExamMgmt.jsp" style="text-decoration: none">
				<font face="Book Antiqua" size="4" color="#1AA4FF">Exam Management</font></a></b><p>
            <b><a href="sendfeedback.jsp" style="text-decoration: none"><font face="Book Antiqua" size="4" color="#1AA4FF">Send Feedback</font></a></b></div>
            
            <div style="position: absolute; width: 263px; height: 37px; z-index: 4; left: 347px; top: 27px" id="layer4">
            <b><font face="Book Antiqua" size="5" color="#1AA4FF">Company Exams</font></b></div>
            <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 668px; top: 75px" id="layer7">
                <b><a style="text-decoration: none" href="seekExamMgmt.jsp">
            <font face="Candara" size="2" color="#000000">Back</font></a></b></div>
        <%! 
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        Statement st;
        String prid,cname,paperid,tech,time;
        Date examdate;
        int numofqs;
        %>
       <div style="position: absolute; width: 400px; height: 100px; z-index: 5; left: 258px; top: 129px" id="layer5">
            <table border="1" width="100%" bordercolor="#C6E8FF" id="table1">
                    <tr>
                            <td align="center"><b>
                            <font face="Verdana" size="2" color="#CE892B">Company Name</font></b></td>
                            <td align="center"><b>
                            <font face="Verdana" size="2" color="#CE892B">Technology</font></b></td>
                            <td align="center"><b>
                            <font face="Verdana" size="2" color="#CE892B">Exam Date</font></b></td>
                            <td align="center"><b>
                            <font face="Verdana" size="2" color="#CE892B">Action</font></b></td>
                    </tr>            
        <%
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();        
        rs=st.executeQuery("select * from paperdetails where status='Prepared' and examdate=to_date(sysdate)");
         while(rs.next())
               {
               prid=rs.getString(1);
               cname=rs.getString(2);
               paperid=rs.getString(3);
               numofqs=rs.getInt(4);
               tech=rs.getString(5);
               examdate=rs.getDate(7);
               %>
                    <tr>
                            <td align="center"><b><font face="Verdana" size="1"><%=cname%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="1"><%=tech%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="1"><%=examdate%></font></b></td>
                            <td align="center"><b><font face="Verdana" size="1"><a href="attendExam.jsp?paperid=<%=paperid%>"><font color="#000000">Take Exam</font></a></font></b></td>
                    </tr>
              <% 
              }
              %>
                    </table>
    </div>
    </body>
</html>
