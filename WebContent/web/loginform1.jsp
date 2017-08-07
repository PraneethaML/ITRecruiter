<%@ page import="java.sql.*" %>
<%!
   String uname,utype,pwd,prid,prname,userid;
   ResultSet rs;
%>
<%
uname=request.getParameter("uname");
pwd= request.getParameter("pwd");
utype=request.getParameter("utype");
session.setAttribute("utype",utype);
  
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
      Statement st = con.createStatement();
      if(utype.equals("admin"))
        {
            rs = st.executeQuery("select * from admin where uname='"+uname+"' and pwd='"+pwd+"'");
            if(rs.next())
              {  
%>
             <jsp:forward page="adminlogin.jsp"></jsp:forward>
<%
              }
            else
              {
                out.println("You enter invalid User Name and Password word pls try again");
              }
         }
      else if(utype.equals("provider"))
      {  
          rs = st.executeQuery("select * from provider where uname='"+uname+"' and pwd='"+pwd+"'");
            if(rs.next())
              {  
                prid=rs.getString(1);
                prname=rs.getString(2);
                session.setAttribute("prid",prid);
                session.setAttribute("prname",prname);
%>
         <jsp:forward page="providerlogin.jsp"></jsp:forward>
<%
              }
            else
              {
                out.println("You enter invalid User Name and Password word pls try again");
              }
      }
      
      else if(utype.equals("seeker"))
      {  
          rs = st.executeQuery("select * from userreg where un='"+uname+"' and pwd='"+pwd+"'");
            if(rs.next())
              {               
                uname=rs.getString(1);
                userid=rs.getString(3);
                session.setAttribute("uname",uname);
                session.setAttribute("userid",userid);
%>
         <jsp:forward page="seekerlogin.jsp"></jsp:forward>
<%
              }
            else
              {
                out.println("You enter invalid User Name and Password word pls try again");
              }
      }
%>
   