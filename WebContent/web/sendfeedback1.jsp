<%@ page import="java.sql.*" %>
<html>
    <head>
    </head>    
    <body>       
            <%!
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            String feedback,id,uname;
            %>
            <%
            id=(String)session.getAttribute("userid");
            uname=(String)session.getAttribute("uname");
            feedback=request.getParameter("feedback");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
            pst=con.prepareStatement("insert into feedback values(?,?,?)");
            pst.setString(1,id);
            pst.setString(2,uname);
            pst.setString(3,feedback);
            pst.execute();
            %>
         <jsp:include page="sendfeedback.jsp"></jsp:include>        
    		<div style="position: absolute; width: 268px; height: 63px; z-index: 5; left: 15px; top: 356px" id="layer7">
                    <b><font color="#CE892B" style="bold">Thanks for the feedback!</font></b><font color="#CE892B">
					</font>
    		</div>        
    </body>
</html>