<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
  <%!
        Connection con;
        Statement st;
        PreparedStatement pst;
        ResultSet rs;
        String vcid,prid,uname,compname,indtype,loc,exp,jobstatus,reqcand,sal,jobdescr,website,contperson,phn,email,addr;
        int i;
        %>
        <%
        prid=(String)session.getAttribute("prid");
        uname=request.getParameter("uname");
        compname=request.getParameter("compname");
        indtype=request.getParameter("indtype");
        loc=request.getParameter("loc");
        exp=request.getParameter("exp"); 
        sal=request.getParameter("sal"); 
        jobstatus=request.getParameter("jobstatus"); 
        reqcand=request.getParameter("reqcand"); 
        jobdescr=request.getParameter("jobdescr"); 
        website=request.getParameter("website"); 
        contperson=request.getParameter("contperson"); 
        phn=request.getParameter("phn"); 
        email=request.getParameter("email"); 
        addr=request.getParameter("addr"); 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();
       
        rs=st.executeQuery("select vcid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        vcid="vc00"+i;       
        pst = con.prepareStatement("insert into vacancy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,vcid);
        pst.setString(2,prid);
        pst.setString(3,uname);
        pst.setString(4,compname);
        pst.setString(5,indtype);       
        pst.setString(6,loc); 
        pst.setString(7,exp);
        pst.setString(8,sal);
        pst.setString(9,jobstatus);        
        pst.setString(10,reqcand);       
        pst.setString(11,jobdescr);       
        pst.setString(12,website);       
        pst.setString(13,contperson); 
        pst.setString(14,phn);      
        pst.setString(15,email);
        pst.setString(16,addr);
        pst.execute();
        %>     
        <jsp:include page="addvacant.jsp"></jsp:include>
        <div style="position: absolute; width: 427px; height: 24px; z-index: 1; left: 11px; top: 42px" id="layer2">
            <font size=4 color="#9E6921">
                <h2><font size="2" face="Tahoma">Vacancy details are added successfully</font></h2>
            </font>
        </div>   
    </body>
</html>
