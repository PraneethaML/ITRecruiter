<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">
        <form action="startExam.jsp" method="post" name="ent">
                    <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 678px; top: 7px" id="layer3">
                <b><a style="text-decoration: none" href="seekerlogin.jsp">
                <font face="Candara" size="2" color="#000000">Back</font></a></b>
        </div> 
            
            <%! 
            Connection con;
            Statement st;
            PreparedStatement pst;
            ResultSet rs;
            int qno,result=0,numofqs,total=0,qual,get,i=0;
            String ans,uname,paperid,fans,sans,cname,tech,str;
            %><%
            uname=(String)session.getAttribute("uname");
            paperid=request.getParameter("paperid");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
            st=con.createStatement();
              rs=st.executeQuery("select * from paperdetails where status='Prepared' and examdate=to_date(sysdate) and paperid='"+paperid+"'");
            if(rs.next())
            {
            cname=rs.getString(2);
            numofqs=rs.getInt(4);
            tech=rs.getString(5); 
            }
              rs=st.executeQuery("select * from exam where un='"+uname+"' and paperid='"+paperid+"'");
          %>
          <div style="position: absolute; width: 722px; height: 128px; z-index: 1; left: 12px; top: 25px" id="layer1">
            <table border="0" width="100%" id="table1" height="123">
                    <tr>
                        <td height="21" colspan="4"><font face="Tahoma" size="2"><b>Company Name : <%=cname%> </b></font> <br>
			<font face="Tahoma" size="2"><b>Technology : <%=tech%></b></font> <br>
			<font face="Tahoma" size="2"><b>No.of Questions : <%=numofqs%></b></font> </td>
                    </tr>
                    <tr>
                            <td width="16%" height="18"><font face="Tahoma" size="2"><b>Question Number</b></font></td>
                            <td height="18" width="15%"><font face="Tahoma" size="2"><b>Correct Answer</b></font></td>
                            <td height="18" width="25%"><font face="Tahoma" size="2"><b>Your Answer</b></font></td>
                            <td height="18" width="25%"><font face="Tahoma" size="2"><b>Result</b></font></td>
                        
                    </tr>
          <%
              while(rs.next())
              {
                  qno=rs.getInt(3);
                  fans=rs.getString(4);
                  sans=rs.getString(5);
                  result=rs.getInt(6)*10;
          %>
           <tr>
                            <td width="16%"><%=qno%></td>
                            <td width="15%"><%=fans%></td>
                            <td width="25%"><%=sans%></td>
                            <td width="17%"><%=result%></td>
                    </tr>
          <%
          total=total+result;
          }
              qual=(numofqs*10)/2;
              //out.print(qual+"   "+total);
              if(qual<=total)
              {
                  str="You are qualified";
                  i=0;
              }
              else
              {
                  str="Not qualified";
                  i=1;
              }
          %>
             <tr>
                 <td colspan="4" height="25"><p align="center"><font face="Tahoma" color="#008000" size="2">
                     <b>Total Result : <%=total%> Marks <br>Status :  <%=str%>   </b></font></font></td>
                    </tr>
            </table>
            <%
            rs=st.executeQuery("select * from qual where uname='"+uname+"' and tech='"+tech+"'");
            if(rs.next())
            {
            }
            else{
                if(i==0)
                {
                pst=con.prepareStatement("insert into qual values(?,?)");
                pst.setString(1,uname);
                pst.setString(2,tech);
                pst.execute();
                }
            }
            %>
		</div>