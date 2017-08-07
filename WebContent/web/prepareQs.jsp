<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            function validate()
            {
            var error="";
                if(document.itcon.ans.value == "Select")
                 {
                    error += "Please choose any answer\n";
                 }
                 if(document.itcon.question.value.length == 0)
                 {
                    error += "Please enter the question\n";
                 }
                 if(document.itcon.opt1.value.length == 0)
                 {
                    error += "Please enter the 1st option\n";
                 }
                 if(document.itcon.opt2.value.length == 0)
                 {
                    error += "Please enter the 2nd option\n";
                 }
                 if(document.itcon.opt3.value.length == 0)
                 {
                    error += "Please enter the 3rd option\n";
                 }
                 if(document.itcon.opt4.value.length == 0)
                 {
                    error += "Please enter the 4th option\n";
                 }
                 alert(error);
            }
        </script>
    </head>
    <body bgcolor="#EAEBEC" background="Images/background1.jpg" style="background-attachment: fixed">        
                   <form action="prepareQs1.jsp" method="post" name="itcon">
                       <div style="position: absolute; width: 222px; height: 37px; z-index: 4; left: 343px; top: 23px" id="layer4">
                           <b><font face="Book Antiqua" size="5" color="#1AA4FF">Exam 
                       Management</font></b></div>
                       <div style="position: absolute; width: 58px; height: 20px; z-index: 3; left: 729px; top: 53px" id="layer3">
                           <b><a style="text-decoration: none" href="examMgmt.jsp">
                       <font face="Candara" size="2" color="#000000">Back</font></a></b></div>  
                       <%!
                       String tech,cname,prid,paperid;
                       int numofqs;
                       static int i=1;
                       %>
                       <%
                       prid=(String)session.getAttribute("prid");
                       cname=request.getParameter("cname");
                       tech=request.getParameter("tech");
                       paperid=request.getParameter("paperid");
                       session.setAttribute("tech",tech);
                       Integer temp=(Integer)session.getAttribute("numofqs");
                       numofqs=temp.intValue();
                       if(i<=numofqs)
                       {
                       %>
                       <div style="position: absolute; width: 484px; height: 264px; z-index: 5; left: 252px; top: 102px" id="layer5">
                           <table border="0" width="100%" bordercolor="#C6E8FF" id="table1">
                               <tr>
                                   <td colspan="4"><b>
                                           <font face="Verdana" size="2" color="#CE892B">Question 
                                   No. <%=i%> </font></b></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">Question :</font></td>
                                   <td colspan="2">
                                   <input type="text" name="question" size="47" tabindex="1"></td>
                               </tr>
                               <tr>
                                   <td colspan="4">&nbsp;</td>
                               </tr>
                               <tr>
                                   <td colspan="4"><b>
                                   <font face="Verdana" size="2" color="#CE892B">Options</font></b></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">A :</font></td>
                                   <td colspan="2">
                                   <input type="text" name="opt1" size="36" tabindex="2"></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">B :</font></td>
                                   <td colspan="2">
                                   <input type="text" name="opt2" size="36" tabindex="3"></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">C :</font></td>
                                   <td colspan="2">
                                   <input type="text" name="opt3" size="36" tabindex="4"></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">D :</font></td>
                                   <td colspan="2">
                                   <input type="text" name="opt4" size="36" tabindex="5"></td>
                               </tr>
                               <tr>
                                   <td colspan="4">&nbsp;</td>
                               </tr>
                               <tr>
                                   <td colspan="4"><b>
                                   <font face="Verdana" size="2" color="#CE892B">Answer</font></b></td>
                               </tr>
                               <tr>
                                   <td width="21%">&nbsp;</td>
                                   <td width="20%"><font face="Verdana" size="2">Ans :</font></td>
                                   <td colspan="2">
                                   <select size="1" name="ans" tabindex="6">
                                        <option selected value="Select">Select
                                        </option>
                                   		<option value="A">A</option>
                                                <option value="B">B</option>
                                                <option value="C">C</option>
                                                <option value="D">D</option>
                                   </select></td>
                               </tr>
                               <tr>
                                   <td width="42%" colspan="2">&nbsp;</td>
                                   <td colspan="2">&nbsp;</td>
                               </tr>
                               <tr>
                                   <td width="42%" colspan="2">&nbsp;</td>
                                   <td width="19%">
                                   <input type="submit" value="Submit" name="B1" tabindex="7"></td>
                                   <td width="37%">
                                   <input type="reset" value="Reset" name="B2" tabindex="8">
                                   <input type="hidden" value="<%=i%>" name="i">
                                   <input type="hidden" value="<%=cname%>" name="cname">
                                   <input type="hidden" value="<%=paperid%>" name="paperid"></td>
                               </tr>
                           </table>
                       </div>
                       <% 
                       i++;
                       %>
                       <%
                       }
                       else
                       {
                       i=1;
                       %>
                       <jsp:forward page="addQstoPaper.jsp"></jsp:forward>               
                       <div style="position: absolute; width: 100px; height: 100px; z-index: 6" id="layer6">
                           <p align="center"><b>
                               <font face="Verdana" size="2" color="#008000">Question paper added successfully
                           </font></b>
                       </div>
                       <% 
                       }
                       %>    
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
                   </form>
               </body>
</html>
