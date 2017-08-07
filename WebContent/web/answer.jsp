<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
        <form action="startExam.jsp" method="post" name="ent">
            <%! 
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            int qno,result=0,numofqs;
            String ans,key,uname,paperid,fans,sans;
            %>
            <%
            uname=(String)session.getAttribute("uname");
            qno=Integer.parseInt(request.getParameter("qno"));
            paperid=request.getParameter("paperid");
            fans=request.getParameter("fans");
            sans=request.getParameter("sans");
            if(fans.equals(sans))
            result=1;
            else
            result=0; 
            if(sans==null)
            {
                sans="No Answer";
                result=0;
            }
             Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
            st=con.createStatement();
            rs=st.executeQuery("select * from quespaper where qno="+qno);  
            if(rs.next())
            numofqs=rs.getInt(4);
            st=con.createStatement();
            rs=st.executeQuery("select * from exam where qno="+qno+" and paperid='"+paperid+"' and un='"+uname+"'");
            if(rs.next())
            {
            out.print("You have already Anwered this Question");
            
            }
            else{
            if(qno<=numofqs)
            {
            pst=con.prepareStatement("insert into exam values(?,?,?,?,?,?)");
            pst.setString(1,uname);
            pst.setString(2,paperid);
            pst.setInt(3,qno);
            pst.setString(4,fans);
            pst.setString(5,sans);
            pst.setInt(6,result);
            pst.execute();
            }
           
            } qno=qno+1; 
            %>
                        <div style="position: absolute; width: 450px; height: 95px; z-index: 1; left: 165px; top: 116px" id="layer1">
&nbsp;<table border="0" width="100%" id="table1">
					<tr>
						<td width="164">Your Selected Answer is : <%=sans%></td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td width="164">&nbsp;</td>
						<td><input type="hidden" name="qno" value="<%=qno%>">
						<input type="submit" value="Next Question" name="B1"></td>
					</tr>
				</table>
			</div>
        </form>
    </body>
</html>