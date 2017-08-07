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
        String prid,uname,pwd,cname,conname,desig,dept,email,phone,fax,addr,country,state,city,empno;
        int i,pin;
        %>
        <%
        uname=request.getParameter("uname");
        pwd=request.getParameter("pwd");
        cname=request.getParameter("cname");
        conname=request.getParameter("conname");
        desig=request.getParameter("desig"); 
        dept=request.getParameter("dept"); 
        email=request.getParameter("email"); 
        phone=request.getParameter("phone"); 
        fax=request.getParameter("fax"); 
        addr=request.getParameter("addr"); 
        country=request.getParameter("country"); 
        state=request.getParameter("state"); 
        city=request.getParameter("city"); 
        pin=Integer.parseInt(request.getParameter("pin")); 
        empno=request.getParameter("empno"); 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","itcon","itcon");
        st=con.createStatement();
        
        rs=st.executeQuery("select prid.nextval from dual");
        if(rs.next())
        i=rs.getInt(1);
        prid="pr00"+i;
        pst = con.prepareStatement("insert into provider values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,prid);
        pst.setString(2,uname);
        pst.setString(3,pwd);
        pst.setString(4,cname);       
        pst.setString(5,conname); 
        pst.setString(6,desig);
        pst.setString(7,dept);
        pst.setString(8,email);        
        pst.setString(9,phone);       
        pst.setString(10,fax);       
        pst.setString(11,addr);       
        pst.setString(12,country); 
        pst.setString(13,state);      
        pst.setString(14,city);
        pst.setInt(15,pin);
        pst.setString(16,empno);
        pst.execute();
        %>     
        <jsp:include page="providersignup.jsp"></jsp:include>
        <div style="position: absolute; width: 286px; height: 24px; z-index: 1; left: 439px; top: 119px" id="layer2">
            <font size=4 color="green">
                <h2><font size="4">You have registered successfully</font></h2>
            </font>
        </div>   
    </body>
</html>
