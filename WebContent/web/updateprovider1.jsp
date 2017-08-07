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
        Statement st1;
        PreparedStatement pst;
        ResultSet rs1;
        String prid,uname,pwd,compname,contperson,desig,dept,email,phn,fax,addr,cntry,state,city,emps;
        int pin;
        %>
        <%
        prid=(String)session.getAttribute("prid");
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        compname=request.getParameter("compname");
        contperson=request.getParameter("contperson");
        desig=request.getParameter("desig");
        dept=request.getParameter("dept");
        email=request.getParameter("email");
        phn=request.getParameter("phn");
        fax=request.getParameter("fax");
        addr=request.getParameter("addr");
        cntry=request.getParameter("country");
        state=request.getParameter("state");
        city=request.getParameter("city");
        pin=Integer.parseInt(request.getParameter("pin"));
        emps=request.getParameter("emps");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st1=con.createStatement();
        pst=con.prepareStatement("update provider set cname=?,conname=?,desig=?,dept=?,email=?,phone=?,fax=?,addr=?,country=?,state=?,city=?,pin=?,noofemps=?,pwd=? where prid='"+prid+"'");
        pst.setString(1,compname);
        pst.setString(2,contperson);
        pst.setString(3,desig);
        pst.setString(4,dept);
        pst.setString(5,email);
        pst.setString(6,phn);
        pst.setString(7,fax);
        pst.setString(8,addr);
        pst.setString(9,cntry);
        pst.setString(10,state);
        pst.setString(11,city);
        pst.setInt(12,pin);
        pst.setString(13,emps);
        pst.setString(14,pwd);
        pst.execute();
        %>
        <jsp:include page="updateprovider.jsp"></jsp:include>        
     <div style="position: absolute; width: 290px; height: 28px; z-index: 1; left: 6px; top: 32px" id="layer1">
        <b>
        <font color="#FF6699">&nbsp;
        <%=uname%> <font face="Tahoma" size="2">Details are Updated Successfully</font></font></b><font size="6" color="#FF6699">
        </font></div>
    </body>
</html>
