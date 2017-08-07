<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>vjit</title>
<SCRIPT language=JavaScript>
var timerID = 0;
var tStart  = null;
var cnt = 0;
var c = 0;
function UpdateTimer() {
   if(timerID) {
      clearTimeout(timerID);
      clockID  = 0;
   }
   if(cnt==59)
   {
     alert("The time is Over for this question....");
       document.ent.action="answer.jsp";
       document.ent.submit();
   }
   if(!tStart)
      tStart   = new Date();
   var   tDate = new Date();
   var   tDiff = tDate.getTime() - tStart.getTime();

   tDate.setTime(tDiff);

   document.ent.theTime.value = "00:"+tDate.getSeconds();
   
   timerID = setTimeout("UpdateTimer()", 1000);
   cnt++;   
}

function Start() {
   tStart   = new Date();
   c++;
   document.ent.theTime.value ="00:00";
   timerID  = setTimeout("UpdateTimer()", 1000);
   return true;
}
function putAns()
{
   document.ent.action="answer.jsp";
   document.ent.submit();
   return true;
}
function putResults()
{
alert("It is here");
   document.ent.action="viewresult.jsp";
   document.ent.submit();
   return true;
}
    </SCRIPT>
</head>
  <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed" onload="Start()">
        <form name="ent">
             <TABLE>
                <TBODY>
                    <TR>
                    <TD align=middle colSpan=3>&nbsp;</TD></TR>
                    <TR>
                    <TD></TD></TR>
        </TBODY></TABLE></CENTER>
             
            <%! 
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            Statement st;
            String cname,paperid,tech,time,prid,ques,a,b,c,d;
            java.util.Date examdate;
            int numofqs,qno,i=1;
            String uname="",ans;
            %>
            <div style="position: absolute; width: 740px; height: 100px; z-index: 1; left: 10px; top: 67px" id="layer1">
	    <table border="0" width="100%" id="table1" height="183">
	    <%
            uname=(String)session.getAttribute("uname");
            paperid=request.getParameter("paperid");
            qno=Integer.parseInt(request.getParameter("qno"));
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
            st=con.createStatement();        
            rs=st.executeQuery("select * from paperdetails where status='Prepared' and examdate=to_date(sysdate)");
            if(rs.next())
            {
            prid=rs.getString(1);
            cname=rs.getString(2);
            paperid=rs.getString(3);
            numofqs=rs.getInt(4);
            tech=rs.getString(5); 
            }
            
            out.print("Welcome to Online Examination");
            if(qno<=numofqs)
            {
                st=con.createStatement();
            rs=st.executeQuery("select * from quespaper where PAPID='"+paperid+"' and qno='"+qno+"'");
            if(rs.next())
            {
               // qno=rs.getInt(5);
                ques=rs.getString(6);
                a=rs.getString(7);
                b=rs.getString(8);
                c=rs.getString(9);
                d=rs.getString(10);
                ans=rs.getString(11);
                %>
                <tr>
					<td height="43">Company : <%=cname%></td>
					<td height="43">Technology : <%=tech%></td>
					<td height="43">No.of Questions : <%=numofqs%></td>
					<td height="43">Time : <INPUT size=5 name=theTime READONLY ></td>
				</tr>
               
				<tr>
                                    <td colspan="4" height="42"><b>Qno :<%=qno+"  "+ques%></b></td>
				</tr>
				<tr>
					<td height="22"><input type="radio" name="sans" value="A"><%=a%></td>
					<td height="22"><input type="radio" name="sans" value="B"><%=b%></td>
					<td height="22"><input type="radio" name="sans" value="C"><%=c%></td>
					<td height="22"><input type="radio" name="sans" value="D"><%=d%></td>
				</tr>
				<tr>
					<td colspan="4">
					<p align="center"><input type="button" value="Submit" onclick="putAns()"></p>
					</p>    </td>
				</tr>
                <%
            }
            }
            else
                {
                %>  <div style="position: absolute; width: 328px; height: 47px; z-index: 2; left: 179px; top: 80px" id="layer2">

               <font face="Times New Roman" size="4"><b>Exam is Over</b></font><BR>
                Click Here to view the results  <input type="button" value="View Results" onclick="putResults()" ></p>    
                    &nbsp;</div>
                <%
                }
                
            %>
    </table>
    </div>  <input type="hidden" name="qno" value="<%=qno%>"> 
    <input type="hidden" name="paperid" value="<%=paperid%>"> 
    <input type="hidden" name="fans" value="<%=ans%>"> 
    <input type="hidden" name="numofqs" value="<%=numofqs%>"> 
        </FORM>
  
    </BODY>
</HTML>