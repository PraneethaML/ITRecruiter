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
        int years,months;
        String un,pwd,userid,fn,ln,addr,city,country,state,qual,tech,expmoths,descountry,phone,email,mobile,indtype,skills;
        %>
        <%
        userid=(String)session.getAttribute("userid");
        fn=request.getParameter("fn");
        ln=request.getParameter("ln");
        pwd=request.getParameter("pwd");
        addr=request.getParameter("addr");
        city=request.getParameter("city");
        country=request.getParameter("country");
        state=request.getParameter("state");
        qual=request.getParameter("qual");
        tech=request.getParameter("tech");
        years=Integer.parseInt(request.getParameter("years")); 
        months=Integer.parseInt(request.getParameter("months"));
        int expmonths=years*12;
        expmonths=months+expmonths;
        //expmoths=request.getParameter("expmoths");
        descountry=request.getParameter("descountry");
        phone=request.getParameter("phn");
        email=request.getParameter("email");
        mobile=request.getParameter("mobile");
        indtype=request.getParameter("indtype");
        skills=request.getParameter("skills");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st1=con.createStatement();
        pst=con.prepareStatement("update userreg set pwd=?,fn=?,ln=?,addr=?,city=?,country=?,state=?,qual=?,tech=?,expmoths=?,descountry=?,phone=?,email=?,mobile=?,indtype=?,skills=? where userid='"+userid+"'");
        pst.setString(1,pwd);
        pst.setString(2,fn);
        pst.setString(3,ln);
        pst.setString(4,addr);
        pst.setString(5,city);
        pst.setString(6,country);
        pst.setString(7,state);
        pst.setString(8,qual);
        pst.setString(9,tech);
        pst.setInt(10,expmonths);
        pst.setString(11,descountry);
        pst.setString(12,phone);
        pst.setString(13,email);
        pst.setString(14,mobile);
        pst.setString(15,indtype);
        pst.setString(16,skills);
        pst.execute();
        %>
        <jsp:include page="updateseeker.jsp"></jsp:include>        
     <div style="position: absolute; width: 413px; height: 28px; z-index: 1; left: 6px; top: 35px" id="layer1">
        <b>
        <font color="#FF6699">&nbsp;
        <%=ln%>&nbsp;<%=fn%><font face="Tahoma" size="2">Details are Updated Successfully</font></font></b><font size="6" color="#FF6699">
        </font></div>
    </body>
</html>
